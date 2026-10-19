import Mathematics.Boolean.Carrier
import Mathematics.Boolean.Corpus

/-!
# Boolean carrier corpus links

The retained class and `Bool` instance are subsumed by Mathlib's canonical
`BooleanAlgebra`.  These links retain exact source identity without becoming
theorem constructors.
-/

namespace Mathematics.Boolean.CarrierCorpus

open Mathematics
open Mathematics.Discovery

def algebra : CorpusSubsumptionLink :=
  Corpus.carrierModule.subsumption
    { value := "ideas:boolean:algebra:carrier" }
    (by simp [StableId.Valid])
    0
    "Algebra"
    (by decide)
    .class
    {
      value :=
        "39a56f4b76460a4a995dd6d0a702b246a4e2feeee2a5609560160f2ce5469245"
    }
    (by
      unfold Digest.Valid
      native_decide)
    "Mathematics.Boolean.Algebra"
    (by decide)
    .carrierReconstruction
    "Use Mathlib's canonical complemented distributive lattice class."

def boolInstance : CorpusSubsumptionLink :=
  Corpus.boolModule.subsumption
    { value := "ideas:boolean:bool:instance" }
    (by simp [StableId.Valid])
    0
    "instBoolAlgebra"
    (by decide)
    .instance
    {
      value :=
        "53d5ee7287e1adff7470bfabc6601fc6573c5766da8f6c955e390d141f594ef7"
    }
    (by
      unfold Digest.Valid
      native_decide)
    "Mathematics.Boolean.boolAlgebra"
    (by decide)
    .carrierReconstruction
    "Reuse the canonical Boolean algebra instance already available for Bool."

def links : List CorpusSubsumptionLink := [algebra, boolInstance]

@[simp] theorem links_length : links.length = 2 := by decide

end Mathematics.Boolean.CarrierCorpus
