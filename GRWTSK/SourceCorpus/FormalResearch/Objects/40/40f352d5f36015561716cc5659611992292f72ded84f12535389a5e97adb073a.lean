import Mathematics.Discovery.IdeasCorpus

/-!
# Kakeya tube-root corpus address

Corpus module 984 is the unique import-free declaration-bearing root of the
retained Kakeya component.  Its path and ordinal are provenance coordinates;
the source digest is the identity-bearing evidence.
-/

namespace Mathematics.Geometry.Kakeya.Corpus

open Mathematics
open Mathematics.Discovery

def tubeRoot : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 984
  modulePath := "Geometry/Kakeya/Tubes.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "737641b8e7951275211274c8b092f6211ff046f85eb293c1302027168ee57f51"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

/-- The exact project-local dependency closure of the import-free root. -/
def tubeRootDependencyClosure : List CorpusModuleAddress := [tubeRoot]

@[simp] theorem tubeRootDependencyClosure_length :
    tubeRootDependencyClosure.length = 1 := by decide

end Mathematics.Geometry.Kakeya.Corpus
