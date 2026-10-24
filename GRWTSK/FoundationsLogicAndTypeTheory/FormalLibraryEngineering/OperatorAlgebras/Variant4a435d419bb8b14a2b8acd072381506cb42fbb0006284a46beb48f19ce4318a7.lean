/-
ACCESS-RAMP-1 / AR-OPENAI-FINITE-CUNTZ-1: uncompiled direct consumer candidate.

Uses unchanged `OAI.Pureness.finitePositiveClass_zero` distributed in openai/math
at adc7f1241b42e322a6451854ab7e4b4c146bf78a,
lean/OAI/Analysis/JiangSu/CuntzSemigroup/FiniteCuntzStates.lean.
OpenAI repository artifact identity, per-file contributors, and historical
mathematical sources are independent; the latter two require further review.

Local delta: compare the zero positive classes at two finite matrix stages by
two applications of the upstream equality. No upstream proof body is copied,
renamed or claimed as locally original mathematics.
Candidate code: OpenAI Codex, at the user's direction, 2026-10-08.
Intended environment: upstream Lean 4.34.1 and its exact captured dependency
lock. The root repository uses 4.33.0 and does not supply OAI. This candidate
has no root import and no checker/consumer acceptance receipt.
Record: registry/mathematics/origins/ACCESS-RAMP-1-origin-1/ramps/openai-finite-cuntz.json
-/
import OAI.Analysis.JiangSu.CuntzSemigroup.FiniteCuntzStates

namespace GRWTSK.AccessRamps.OperatorAlgebras

open OAI OAI.Pureness OAI.TraceCone

variable {A : Type*} [CStarAlgebra A] [PartialOrder A] [StarOrderedRing A]

example (n m : ℕ) :
    finitePositiveClass n (Positive.zero : Positive (FinMatrix A n)) =
      finitePositiveClass m (Positive.zero : Positive (FinMatrix A m)) :=
  (finitePositiveClass_zero n).trans (finitePositiveClass_zero m).symm

-- Next consumer: the stage comparison specializes to dimensions one and two.
example :
    finitePositiveClass 1 (Positive.zero : Positive (FinMatrix A 1)) =
      finitePositiveClass 2 (Positive.zero : Positive (FinMatrix A 2)) :=
  (finitePositiveClass_zero 1).trans (finitePositiveClass_zero 2).symm

end GRWTSK.AccessRamps.OperatorAlgebras
