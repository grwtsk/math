# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConstructionProvenance.Varianta43566bfc84c76ff02e91750232e55cb02d0f252f1864b102074763d0b77cb4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65062a85e17c8619d9d79ba44b5bb87b5ef7cc41` · SHA-256 `b3288efa97aee6482a350b7e63052e3375cbb38dfdadfb35c5b1d005e3e53429`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConstructionProvenance.Variant85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ConstructionProvenance.Variant85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90","mathematical_subject":"Foundations.Unclassified","original_sha256":"85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/ConstructionProvenance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Arithmetic construction and projector provenance

Structural coupling is witnessed by one fixed construction rule.  Arithmetic
essentiality is stronger: two sources with the same erased image must remain
distinguishable by an isomorphism-invariant detector.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConstructionProvenance.Variant85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90

namespace Mathematics.Prismatic

universe u v w x

/-- A realization explicitly produced by one fixed arithmetic construction. -/
structure ConstructionProvenance
    (Source : Type u) (Realization : Type v) where
  construct : Source → Realization
  source : Source
  realization : Realization
  realizes : realization = construct source

/--
An idempotent is source-derived only when the same declared construction
produces both the carrier and its projector.
-/
structure ProjectorProvenance
    (Source : Type u) (Carrier : Type v) where
  source : Source
  constructCarrier : Source → Carrier
  Projector : Type w
  constructProjector : Source → Projector
  applyProjector : Projector → Carrier → Carrier
  idempotent :
    ∀ value,
      applyProjector (constructProjector source)
          (applyProjector (constructProjector source) value) =
        applyProjector (constructProjector source) value

/--
A pair of arithmetic sources with the same erased image but distinguishable
realizations is an exact obstruction to factorization through erasure.
-/
structure NonfactorizationWitness
    (Source : Type u) (Erased : Type v)
    (Realization : Type w) (Invariant : Type x) where
  erase : Source → Erased
  realize : Source → Realization
  detector : Realization → Invariant
  left : Source
  right : Source
  sameErasure : erase left = erase right
  distinguished :
    detector (realize left) ≠ detector (realize right)

namespace NonfactorizationWitness

variable {Source : Type u} {Erased : Type v}
  {Realization : Type w} {Invariant : Type x}

/-- The realization cannot be reconstructed from the arithmetic-erased input. -/
theorem no_erased_factorization
    (witness :
      NonfactorizationWitness Source Erased Realization Invariant) :
    ¬ ∃ factor : Erased → Realization,
        ∀ source, witness.realize source =
          factor (witness.erase source) := by
  rintro ⟨factor, factors⟩
  apply witness.distinguished
  rw [factors witness.left, factors witness.right, witness.sameErasure]

end NonfactorizationWitness

end Mathematics.Prismatic
```
