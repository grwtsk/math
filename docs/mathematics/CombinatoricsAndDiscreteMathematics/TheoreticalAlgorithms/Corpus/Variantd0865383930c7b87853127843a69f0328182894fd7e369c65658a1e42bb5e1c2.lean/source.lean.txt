import Mathematics.Boolean.Corpus

/-!
# Formula corpus neighborhood

The four routed modules form the exact import closure needed by
`Algebra/Formula.lean`: carrier, evaluation, semantics, then algebraic laws.
Paths and ordinals remain provenance coordinates, not semantic identities.
-/

namespace Mathematics.Boolean.Formula.Corpus

open Mathematics
open Mathematics.Discovery

def carrierModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 963
  modulePath := "Formula.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "8aa5444c34f71683f63c534f68ee36175f15c4044dea37e2c9b71470eaf6c5d6"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def evaluationModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 966
  modulePath := "Formula/Eval.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "d47e6d44d7ec10bee22d83269125bf13886ae476fbf51f0854df3eb37dbacd1b"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def semanticsModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 968
  modulePath := "Formula/Semantics.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "f8f988b53a0c9e57bf48e44f38672a811ef3f5c3be700180964bbc3b2acdbe7c"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def algebraModule : CorpusModuleAddress :=
  Mathematics.Boolean.Corpus.formulaModule

/-- The dependency-ordered source closure, retained without claiming authority. -/
def dependencyClosure : List CorpusModuleAddress := [
  carrierModule,
  evaluationModule,
  semanticsModule,
  algebraModule
]

@[simp] theorem dependencyClosure_length :
    dependencyClosure.length = 4 := by decide

end Mathematics.Boolean.Formula.Corpus
