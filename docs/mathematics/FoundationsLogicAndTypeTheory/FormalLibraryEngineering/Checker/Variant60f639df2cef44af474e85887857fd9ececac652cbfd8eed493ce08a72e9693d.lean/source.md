# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Checker.Variant60f639df2cef44af474e85887857fd9ececac652cbfd8eed493ce08a72e9693d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93883d7ca4304220c8c59acbbc50e6a3b6c4bb8f` · SHA-256 `60f639df2cef44af474e85887857fd9ececac652cbfd8eed493ce08a72e9693d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.Convert
public import Std.Tactic.BVDecide.LRAT.Internal.LRATCheckerSound
public import Std.Tactic.BVDecide.LRAT.Internal.CompactLRATChecker
import Std.Tactic.BVDecide.LRAT.Internal.CompactLRATCheckerSound

@[expose] public section

/-!
This module contains the implementation of the LRAT checker as well as a proof that the given
CNF is unsat if the checker succeeds.
-/

open Std.Sat

namespace Std.Tactic.BVDecide
namespace LRAT

open Std.Tactic.BVDecide.LRAT.Internal
/--
Check whether `lratProof` is a valid LRAT certificate for the unsatisfiability of `cnf`.
-/
def check (lratProof : Array IntAction) (cnf : CNF Nat) : Bool :=
  let internalFormula := CNF.convertLRAT cnf
  let checkerResult := compactLratChecker internalFormula lratProof
  checkerResult = .success

open Std.Tactic.BVDecide.LRAT.Internal in
/--
If the `check` functions succeeds on `lratProof` and `cnf` then the `cnf` is unsatisfiable.
-/
theorem check_sound (lratProof : Array IntAction) (cnf : CNF Nat) :
    check lratProof cnf → cnf.Unsat := by
  intro h1
  apply CNF.unsat_of_convertLRAT_unsat
  unfold check at h1
  simp at h1
  apply compactLratChecker_sound (proof := lratProof)
  · apply CNF.convertLRAT_readyForRupAdd
  · apply CNF.convertLRAT_readyForRatAdd
  · assumption

end LRAT
end Std.Tactic.BVDecide
```
