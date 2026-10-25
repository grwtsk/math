# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultAlt.Variant5232279d0b948ad4a2c133afee574d038d45c11c32052d4ba8de9ee3fce3a951

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b609321e7454020574d084a7d7525809ee28c9b` · SHA-256 `5232279d0b948ad4a2c133afee574d038d45c11c32052d4ba8de9ee3fce3a951`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Simp.SimpM

public section

namespace Lean.Compiler.LCNF
namespace Simp

/--
Return the alternative in `alts` whose body appears in most arms,
and the number of occurrences.
We use this function to decide whether to create a `.default` case
or not.
-/
private def getMaxOccs (alts : Array (Alt .pure)) : Alt .pure × Nat := Id.run do
  let mut maxAlt := alts[0]!
  let mut max    := getNumOccsOf alts 0
  for h : i in 1...alts.size do
    let curr := getNumOccsOf alts i
    if curr > max then
       maxAlt := alts[i]
       max    := curr
  return (maxAlt, max)
where
  /--
  Return the number of occurrences of `alts[i]` in `alts`.
  We use alpha equivalence.
  Note that the number of occurrences can be greater than 1 only when
  the alternative does not depend on field parameters
  -/
  getNumOccsOf (alts : Array (Alt .pure)) (i : Nat) : Nat := Id.run do
    let code := alts[i]!.getCode
    let mut n := 1
    for h : j in (i+1)...alts.size do
      if Code.alphaEqv alts[j].getCode code then
        n := n+1
    return n

/--
Add a default case to the given `cases` alternatives if there
are alternatives with equivalent (aka alpha equivalent) right hand sides.
-/
def addDefaultAlt (alts : Array (Alt .pure)) : SimpM (Array (Alt .pure)) := do
  if alts.size <= 1 || alts.any (· matches .default ..) then
    return alts
  else
    let (max, noccs) := getMaxOccs alts
    if noccs == 1 then
      return alts
    else
      let mut altsNew := #[]
      let mut first := true
      markSimplified
      for alt in alts do
        if Code.alphaEqv alt.getCode max.getCode then
          let .alt _ ps k := alt | unreachable!
          eraseParams ps
          unless first do
            eraseCode k
          first := false
        else
          altsNew := altsNew.push alt
      return altsNew.push (.default max.getCode)
```
