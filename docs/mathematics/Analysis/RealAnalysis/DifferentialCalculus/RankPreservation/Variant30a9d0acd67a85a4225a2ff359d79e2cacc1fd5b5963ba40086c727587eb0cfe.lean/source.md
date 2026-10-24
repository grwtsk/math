# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RankPreservation.Variant30a9d0acd67a85a4225a2ff359d79e2cacc1fd5b5963ba40086c727587eb0cfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e2b78ba153e61f446bab54b32eab96e02b913e4` · SHA-256 `f8bdad9fdef83d8faad2148e7e828730a28cdc3e23cb3a6299648e3976a0141a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.StableSubcomplex.Variant514ded1707fd92559420b59f52ab9db7122ae03c72d32a5167eddd22bc2670ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"514ded1707fd92559420b59f52ab9db7122ae03c72d32a5167eddd22bc2670ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.StableSubcomplex.Variant514ded1707fd92559420b59f52ab9db7122ae03c72d32a5167eddd22bc2670ef","mathematical_subject":"Analysis.Calculus","original_sha256":"514ded1707fd92559420b59f52ab9db7122ae03c72d32a5167eddd22bc2670ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/RankPreservation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite rank-preservation certificates

This module gives the prismatic-shadow halt certificate a project-local,
finite rank-preservation theorem.  It does not compute Smith normal form or
real rank; it states the finite certificate shape that such computations must
fill.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.StableSubcomplex.Variant514ded1707fd92559420b59f52ab9db7122ae03c72d32a5167eddd22bc2670ef

namespace Presentation
namespace RankPreservation

/-- Stable subcomplex metadata for the finite presentation class. -/
structure StableSubcomplex where
  label : String
  degree : Nat
  objectHash : Nat

/-- Integral homology rank supplied by a finite certificate. -/
structure IntegralHomologyRank
    (_S : StableSubcomplex) where
  rank : Nat
  torsionFree : Prop
  torsionFreeProof : torsionFree

/-- Real relaxed homology dimension supplied by a finite certificate. -/
structure RealRelaxedHomologyDimension
    (_S : StableSubcomplex) where
  dimension : Nat

/-- Finite certificate that the induced real map is an isomorphism on the stable class. -/
structure InducedRealMapCertificate
    (S : StableSubcomplex)
    (I : IntegralHomologyRank S)
    (R : RealRelaxedHomologyDimension S) where
  rankMatchesDimension : I.rank = R.dimension
  inducedMapIsomorphismOnStableClass : Prop
  inducedMapIsomorphismProof : inducedMapIsomorphismOnStableClass

/-- Complete finite rank-preservation certificate. -/
structure RankPreservationCertificate where
  stableSubcomplex : StableSubcomplex
  integralRank : IntegralHomologyRank stableSubcomplex
  realDimension : RealRelaxedHomologyDimension stableSubcomplex
  inducedMap : InducedRealMapCertificate stableSubcomplex integralRank realDimension

/-- The finite certificate proves torsion-freeness of the stable subcomplex. -/
theorem rank_preservation_torsion_free
    (C : RankPreservationCertificate) :
    C.integralRank.torsionFree :=
  C.integralRank.torsionFreeProof

/-- The finite certificate proves rank/dimension preservation after real relaxation. -/
theorem rank_preservation_rank_eq_dimension
    (C : RankPreservationCertificate) :
    C.integralRank.rank = C.realDimension.dimension :=
  C.inducedMap.rankMatchesDimension

/-- The finite certificate proves the induced real map is an isomorphism on the stable class. -/
theorem rank_preservation_induced_map_isomorphism
    (C : RankPreservationCertificate) :
    C.inducedMap.inducedMapIsomorphismOnStableClass :=
  C.inducedMap.inducedMapIsomorphismProof

/-- Pack the three rank-preservation obligations into one project-local theorem. -/
theorem rank_preservation_certificate_sound
    (C : RankPreservationCertificate) :
    C.integralRank.torsionFree ∧
      C.integralRank.rank = C.realDimension.dimension ∧
      C.inducedMap.inducedMapIsomorphismOnStableClass :=
  ⟨rank_preservation_torsion_free C,
    rank_preservation_rank_eq_dimension C,
    rank_preservation_induced_map_isomorphism C⟩

/--
Boundary-calculus named route for project-local rank preservation.

This is a finite project theorem route, not an analytic theorem and not a
claim that torsion-freeness alone implies rank preservation.
-/
theorem rank_preservation_through_boundary_calculus
    (C : RankPreservationCertificate) :
    C.integralRank.torsionFree ∧
      C.integralRank.rank = C.realDimension.dimension ∧
      C.inducedMap.inducedMapIsomorphismOnStableClass :=
  rank_preservation_certificate_sound C

/-- A finite rank payload does not own rank preservation without the certificate fields. -/
def FiniteRankPayloadOwnsRankPreservation
    (_S : StableSubcomplex)
    (_integralRank : Nat)
    (_realDimension : Nat) : Prop :=
  False

/-- Direct finite rank-payload authority attempts fail. -/
theorem finite_rank_payload_authority_attempt_fails
    (S : StableSubcomplex)
    (integralRank realDimension : Nat) :
    ¬ FiniteRankPayloadOwnsRankPreservation S integralRank realDimension := by
  intro h
  exact h

end RankPreservation
end Presentation
```
