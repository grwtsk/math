# bijective_compr₂_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1b9cc3397532e9f8518e525d879a9ae6b140aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c59ea96-7f0f-f35a-8f5c-2068ce0ff0b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d0e3b07-d2f3-5f74-4904-45b8a58fd212",
  "kind": "theorem",
  "lexical_name": "bijective_compr₂_of_equiv",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "bijective-compr-of-equiv--3e90344968d104af00ba264d",
  "source": {
    "blob": "f1b9cc3397532e9f8518e525d879a9ae6b140aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 420,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e90344968d104af00ba264d7a0c519215c12cb883e550849c938c4b3b9ada46",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearMap/Variant514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d0e3b07-d2f3-5f74-4904-45b8a58fd212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_compr₂_of_equiv (f : M →ₗ[R] Nₗ →ₗ[R] Pₗ) (g : Pₗ ≃ₗ[R] Qₗ) (hf : Bijective f) :
    Bijective (f.compr₂ g.toLinearMap) :=
  ⟨injective_compr₂_of_injective f g.toLinearMap hf.1 g.bijective.1,
  surjective_compr₂_of_equiv f g hf.2⟩

section CommSemiringSemilinear

variable {R₂ R₃ R₄ M N P Q : Type*}
variable [CommSemiring R₂] [CommSemiring R₃] [CommSemiring R₄]
variable [AddCommMonoid M] [AddCommMonoid N] [AddCommMonoid P] [AddCommMonoid Q]
variable [Module R M] [Module R₂ N] [Module R₃ P] [Module R₄ Q]
variable {σ₁₂ : R →+* R₂} {σ₁₃ : R →+* R₃} {σ₁₄ : R →+* R₄} {σ₂₃ : R₂ →+* R₃}
variable {σ₂₄ : R₂ →+* R₄} {σ₃₄ : R₃ →+* R₄} {σ₄₃ : R₄ →+* R₃}
variable [RingHomCompTriple σ₁₂ σ₂₃ σ₁₃]
variable [RingHomCompTriple σ₂₃ σ₃₄ σ₂₄] [RingHomCompTriple σ₁₃ σ₃₄ σ₁₄]
variable [RingHomCompTriple σ₂₄ σ₄₃ σ₂₃]

variable (M N P)

variable (R₃) in
/-- Composing linear maps as a bilinear map from `(M →ₛₗ[σ₁₂] N) × (N →ₛₗ[σ₂₃] P)`
to `M →ₛₗ[σ₁₃] P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearMap/Variant514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b9cc3397532e9f8518e525d879a9ae6b140aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
