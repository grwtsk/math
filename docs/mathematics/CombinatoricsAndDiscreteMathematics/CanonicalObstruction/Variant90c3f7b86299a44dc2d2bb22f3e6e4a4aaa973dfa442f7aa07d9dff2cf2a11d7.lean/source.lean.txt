-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalObstructionContext.Variant8cdbb6a7240c4b4ab25074fa4e3ef58e5412895a88c034ef762b61ab4bb52d9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cdbb6a7240c4b4ab25074fa4e3ef58e5412895a88c034ef762b61ab4bb52d9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CanonicalObstructionContext.Variant8cdbb6a7240c4b4ab25074fa4e3ef58e5412895a88c034ef762b61ab4bb52d9b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8cdbb6a7240c4b4ab25074fa4e3ef58e5412895a88c034ef762b61ab4bb52d9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Refinement/CanonicalObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Symmetry.ObstructionAction

/-!
# Canonical primitive obstructions

This integration context requires both primitive-core transport under an
explicit completion-equivariance bridge and a data-only finite canonicalizer.
The canonicalizer therefore cannot establish infeasibility by itself.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalObstructionContext.Variant8cdbb6a7240c4b4ab25074fa4e3ef58e5412895a88c034ef762b61ab4bb52d9b

namespace Mathematics.BinaryFrontier

structure CanonicalObstructionContext
    (G Partial Full Constraint Raw : Type)
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    [MulAction G Raw]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics) where
  canonicalizer : FiniteDataCanonicalizer G Raw
  rawOf : Partial → Finset Constraint → Raw
  raw_equivariant :
    ∀ groupElement state core,
      rawOf
          (equivariance.actPartial groupElement state)
          (equivariance.actRegistry groupElement core) =
        groupElement • rawOf state core
  primitiveTransport :
    ∀
      (registry core : Finset Constraint)
      (state : Partial)
      (primitive :
        PrimitiveObstructionCertificate
          semantics registry state core)
      (groupElement : G),
      PrimitiveCoreTransportCertificate
        semantics equivariance
        registry core state primitive groupElement

theorem automorphic_obstructions_share_canonical_record
    {G Partial Full Constraint Raw : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    [MulAction G Raw]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (context :
      CanonicalObstructionContext
        G Partial Full Constraint Raw
        semantics equivariance)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G) :
    context.canonicalizer.canonicalize
        (context.rawOf
          (equivariance.actPartial groupElement state)
          (equivariance.actRegistry groupElement core)) =
      context.canonicalizer.canonicalize
        (context.rawOf state core) := by
  cases context.primitiveTransport
      registry core state primitive groupElement with
  | mk transported =>
      have transportedInfeasible :=
        primitive_core_is_infeasible
          semantics transported
      rw [context.raw_equivariant]
      exact canon_smul
        context.canonicalizer groupElement
        (context.rawOf state core)

end Mathematics.BinaryFrontier
