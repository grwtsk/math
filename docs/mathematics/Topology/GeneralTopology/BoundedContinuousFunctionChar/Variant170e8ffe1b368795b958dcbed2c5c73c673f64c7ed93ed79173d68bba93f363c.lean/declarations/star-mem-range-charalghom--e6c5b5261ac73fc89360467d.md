# star_mem_range_charAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4347c6da611cf6886e8db342774a4e53785b32f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72359d9e-6b93-e3b6-aedb-84abd3ae522f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb7a1473-3043-f5bb-b90d-2bf8b0a23da9",
  "kind": "lemma",
  "lexical_name": "star_mem_range_charAlgHom",
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
  "slug": "star-mem-range-charalghom--e6c5b5261ac73fc89360467d",
  "source": {
    "blob": "4347c6da611cf6886e8db342774a4e53785b32f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c5b5261ac73fc89360467d11b217441c6e5c5eba025e1563067907f31a16ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb7a1473-3043-f5bb-b90d-2bf8b0a23da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma star_mem_range_charAlgHom (he : Continuous e) (hL : Continuous fun p : V × W ↦ L p.1 p.2)
    {x : V →ᵇ ℂ} (hx : x ∈ (charAlgHom he hL).range) :
    star x ∈ (charAlgHom he hL).range := by
  simp only [AlgHom.mem_range] at hx ⊢
  obtain ⟨y, rfl⟩ := hx
  let z := Finsupp.mapRange star (star_zero _) y
  let f : W ↪ W := ⟨fun x ↦ -x, (fun _ _ ↦ neg_inj.mp)⟩
  refine ⟨z.embDomain f, ?_⟩
  ext1 u
  simp only [charAlgHom_apply, Finsupp.support_embDomain, Finset.sum_map,
    Finsupp.embDomain_apply, star_apply, star_sum, star_mul', Circle.star_addChar]
  rw [Finsupp.support_mapRange_of_injective (star_zero _) y star_injective]
  simp [z, f]

/-- The star-subalgebra of polynomials. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4347c6da611cf6886e8db342774a4e53785b32f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
