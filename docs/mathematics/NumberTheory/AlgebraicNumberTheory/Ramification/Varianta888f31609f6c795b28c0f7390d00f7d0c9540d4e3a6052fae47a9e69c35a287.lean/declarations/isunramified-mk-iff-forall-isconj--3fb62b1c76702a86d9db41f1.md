# isUnramified_mk_iff_forall_isConj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a204e202cf23c86a4408199ed27f9f04c83168af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1174c15-6545-018f-34ca-066344b0324a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2de232d6-6eb5-5770-3341-f3d5df7b9b4f",
  "kind": "lemma",
  "lexical_name": "isUnramified_mk_iff_forall_isConj",
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
  "slug": "isunramified-mk-iff-forall-isconj--3fb62b1c76702a86d9db41f1",
  "source": {
    "blob": "a204e202cf23c86a4408199ed27f9f04c83168af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 253,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fb62b1c76702a86d9db41f105b5c6d168f812f6cd7b9e6e8c30a435aa9fd48d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2de232d6-6eb5-5770-3341-f3d5df7b9b4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnramified_mk_iff_forall_isConj [IsGalois k K] {φ : K →+* ℂ} :
    IsUnramified k (mk φ) ↔ ∀ σ : K ≃ₐ[k] K, ComplexEmbedding.IsConj φ σ → σ = 1 := by
  refine ⟨fun H σ hσ ↦ hσ.isUnramified_mk_iff.mp H,
    fun H ↦ ?_⟩
  by_contra hφ
  rw [not_isUnramified_iff] at hφ
  rw [comap_mk, isReal_mk_iff, ← not_isReal_iff_isComplex, isReal_mk_iff,
    ← ComplexEmbedding.isConj_one_iff (k := k)] at hφ
  letI := (φ.comp (algebraMap k K)).toAlgebra
  letI := φ.toAlgebra
  have : IsScalarTower k K ℂ := IsScalarTower.of_algebraMap_eq' rfl
  let φ' : K →ₐ[k] ℂ := { star φ with commutes' := fun r ↦ by simpa using RingHom.congr_fun hφ.2 r }
  have : ComplexEmbedding.IsConj φ (AlgHom.restrictNormal' φ' K) :=
    (RingHom.ext <| AlgHom.restrictNormal_commutes φ' K).symm
  exact hφ.1 (H _ this ▸ this)

local notation "Stab" => MulAction.stabilizer (K ≃ₐ[k] K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a204e202cf23c86a4408199ed27f9f04c83168af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
