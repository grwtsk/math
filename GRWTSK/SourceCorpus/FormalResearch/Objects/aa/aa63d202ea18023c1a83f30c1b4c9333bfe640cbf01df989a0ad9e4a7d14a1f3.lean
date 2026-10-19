import Mathematics.Geometry.Kakeya.Corpus
import Mathematics.Geometry.Kakeya.Family

/-!
# Kakeya tube-root subsumption

All three declarations in corpus module 984 route to exact Euclidean
carriers.  The source's labels, duplicated ambient dimension, and
proof-by-field finiteness marker are rejected as mathematical structure.
Every link remains proposal-only.
-/

namespace Mathematics.Geometry.Kakeya.Subsumption

open Mathematics
open Mathematics.Discovery

private def link
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (digest : Digest)
    (digest_valid : digest.Valid)
    (target : String)
    (target_nonempty : target ≠ "")
    (rationale : String) :
    CorpusSubsumptionLink :=
  Corpus.tubeRoot.subsumption
    { value := "ideas:kakeya-tube-root:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    .structure
    digest
    digest_valid
    target
    target_nonempty
    .semanticCorrection
    rationale

def scaleData := link 0 "ScaleData" (by decide)
  { value := "35800afaa08dcddcbae04c29344e61cb666e7ce12483c81f94aaf6125ef8e85d" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.Kakeya.ScaleWindow" (by decide)
  "Replace integer scale labels by an ordered positive real scale window."

def tube := link 1 "Tube" (by decide)
  { value := "5a1eb47514be90807348a8c45c3cb79e315ed1efaaf4fa2d2352cffee743a1c5" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.Kakeya.Tube" (by decide)
  "Replace direction strings and repeated dimension values by a typed unit vector and exact tube carrier."

def tubeConfiguration := link 2 "TubeConfiguration" (by decide)
  { value := "accb40a772a3d323a69ea56e4564c85752d8ac77b456ea794c6f99f972654e73" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.Kakeya.FiniteTubeFamily" (by decide)
  "Encode finiteness structurally through a Fin-indexed family in one type-indexed ambient dimension."

def links : List CorpusSubsumptionLink := [
  scaleData,
  tube,
  tubeConfiguration
]

@[simp] theorem links_length : links.length = 3 := by decide

theorem links_proposal_only :
    ∀ sourceLink ∈ links, sourceLink.authority = .proposalOnly := by
  intro sourceLink _membership
  exact sourceLink.authority_is_proposal_only

end Mathematics.Geometry.Kakeya.Subsumption
