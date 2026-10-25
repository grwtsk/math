# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Variant4f1c42f7768b75d70fe2eb45be8feca6a8cfdd8718431498bdd31f955dd929bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab7c76d631b546d75459082e7b5e16e5f938eb7c` · SHA-256 `73e6a986b093cdd127dcdfecf38f1dc944587a4f13c948041de07a125a11157b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Varianta2af01d41f8fb82dc42b6768071c2c05d335a9d305fe7421ac84e5fbc44d29b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2af01d41f8fb82dc42b6768071c2c05d335a9d305fe7421ac84e5fbc44d29b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Random.Varianta2af01d41f8fb82dc42b6768071c2c05d335a9d305fe7421ac84e5fbc44d29b4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a2af01d41f8fb82dc42b6768071c2c05d335a9d305fe7421ac84e5fbc44d29b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/random.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Control.Random
import Mathlib.Tactic.NormNum
import Batteries.Lean.LawfulMonad


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Varianta2af01d41f8fb82dc42b6768071c2c05d335a9d305fe7421ac84e5fbc44d29b4

open Random

-- TODO(kmill): remove once the mathlib ToExpr Int instance is removed
set_option eval.pp false

section Rand

/--
info: 33
-/
#guard_msgs in
#eval do
  IO.runRandWith 257 (show Rand _ from do
    let i ← randBound Int 3 30 (by norm_num)
    let j ← randBound Int 4 40 (by norm_num)
    return i.1 + j.1)

-- using higher universes
/--
info: ULift.up 19
-/
#guard_msgs in
#eval do
  IO.runRandWith 257 (show Rand _ from do
    let i ← rand (ULift.{3} (Fin 20))
    return i)

end Rand

-- using the monad transformer
section RandT

/--
info: Got 6
Got 27
---
info: 33
-/
#guard_msgs in
#eval show IO _ from do
  IO.runRandWith 257 (do
    let i ← randBound Int 3 30 (by norm_num)
    IO.println s!"Got {i}"
    let j ← randBound Int 4 40 (by norm_num)
    IO.println s!"Got {j}"
    return i.1 + j.1)

/--
info: Got 6
Got 27
---
info: 33
-/
#guard_msgs in
#eval show Lean.Meta.MetaM _ from do
  IO.runRandWith 257 (do
    let i ← randBound Int 3 30 (by norm_num)
    IO.println s!"Got {i}"
    let j ← randBound Int 4 40 (by norm_num)
    IO.println s!"Got {j}"
    return i.1 + j.1)

-- test that `MetaM` can access the global random number generator
/--
info: Got 4
Got 4
---
info: 8
-/
#guard_msgs in
#eval show Lean.Meta.MetaM _ from do
  IO.runRand (do
    -- since we don't know the seed, we use a trivial range here for determinism
    let i ← randBound Int 4 4 (by norm_num)
    IO.println s!"Got {i}"
    let j ← randBound Int 4 4 (by norm_num)
    IO.println s!"Got {i}"
    return i.1 + j.1)

/--
info: GOOD
-/
#guard_msgs in
#eval show IO _ from do
  IO.runRandWith 257 <| do
    let mut count := 0
    for _ in [:10000] do
      if (← randFin : Fin 3) == 1 then count := count + 1
    if Float.abs (0.333 - (count / Nat.toFloat 10000)) < 0.01 then
      IO.println "GOOD"
    else
      IO.println "BAD"

/--
info: GOOD
-/
#guard_msgs in
#eval show IO _ from do
  IO.runRandWith 257 <| do
    let mut count := 0
    for _ in [:10000] do
      if (← randFin : Fin 2) == 0 then count := count + 1
    if Float.abs (0.5 - (count / Nat.toFloat 10000)) < 0.01 then
      IO.println "GOOD"
    else
      IO.println "BAD"

/--
info: GOOD
-/
#guard_msgs in
#eval show IO _ from do
  IO.runRandWith 257 <| do
    let mut count := 0
    for _ in [:10000] do
      if (← randFin : Fin 10) == 5 then count := count + 1
    if Float.abs (0.1 - (count / Nat.toFloat 10000)) < 0.01 then
      IO.println "GOOD"
    else
      IO.println "BAD"

end RandT
```
