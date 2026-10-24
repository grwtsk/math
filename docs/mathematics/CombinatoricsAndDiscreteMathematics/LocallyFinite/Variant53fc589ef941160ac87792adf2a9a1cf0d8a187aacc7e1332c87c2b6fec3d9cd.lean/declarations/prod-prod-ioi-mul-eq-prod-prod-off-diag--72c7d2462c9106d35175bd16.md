# prod_prod_Ioi_mul_eq_prod_prod_off_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ec176d13eafe6b830cd02819e132390f3841d59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:039747f8-158c-831d-e5fc-aa6b74247bad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42d470d8-0f74-570e-7a36-ea5128d9c764",
  "kind": "lemma",
  "lexical_name": "prod_prod_Ioi_mul_eq_prod_prod_off_diag",
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
  "slug": "prod-prod-ioi-mul-eq-prod-prod-off-diag--72c7d2462c9106d35175bd16",
  "source": {
    "blob": "2ec176d13eafe6b830cd02819e132390f3841d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variant53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72c7d2462c9106d35175bd1672d1350e8afbe2efc589196547282c44819eb77d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variant53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42d470d8-0f74-570e-7a36-ea5128d9c764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_prod_Ioi_mul_eq_prod_prod_off_diag (f : α → α → M) :
    ∏ i, ∏ j ∈ Ioi i, f j i * f i j = ∏ i, ∏ j ∈ {i}ᶜ, f j i := by
  simp_rw [← Ioi_disjUnion_Iio, prod_disjUnion, prod_mul_distrib]
  congr 1
  rw [prod_sigma', prod_sigma']
  refine prod_nbij' (fun i ↦ ⟨i.2, i.1⟩) (fun i ↦ ⟨i.2, i.1⟩) ?_ ?_ ?_ ?_ ?_ <;> simp

end LocallyFiniteOrderTopBot

end LinearOrder

set_option backward.isDefEq.respectTransparency false in
/-- Given a sequence of finite sets `s₀ ⊆ s₁ ⊆ s₂ ⋯`, the product of `gᵢ` over `i ∈ sₙ` is equal
to `∏_{i ∈ s₀} gᵢ` * `∏_{j < n, i ∈ sⱼ₊₁ \ sⱼ} gᵢ`. -/
@[to_additive /-- Given a sequence of finite sets `s₀ ⊆ s₁ ⊆ s₂ ⋯`, the sum of `gᵢ` over `i ∈ sₙ` is
equal to `∑_{i ∈ s₀} gᵢ` + `∑_{j < n, i ∈ sⱼ₊₁ \ sⱼ} gᵢ`.-/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variant53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variant53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec176d13eafe6b830cd02819e132390f3841d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
