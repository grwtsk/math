# LinearMap.exists_range_eq_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4a36aed6c9fdedfb795a22c512c5e78668fe2a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 925,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62af68a9-8460-8926-287e-75abb01b8718",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08ab1511-ad10-f62e-721b-f3e7d053ba50",
  "kind": "lemma",
  "lexical_name": "LinearMap.exists_range_eq_graph",
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
  "slug": "linearmap-exists-range-eq-graph--fc6631d94bf7f0f8b391f1ed",
  "source": {
    "blob": "f4a36aed6c9fdedfb795a22c512c5e78668fe2a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 949,
    "line": 925,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc6631d94bf7f0f8b391f1ed4ffe3e7253a23c08910e5771c38ce4d5c022b349",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08ab1511-ad10-f62e-721b-f3e7d053ba50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–949.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.exists_range_eq_graph {f : G →ₛₗ[σ] H × I} (hf₁ : Surjective (Prod.fst ∘ f))
    (hf : ∀ g₁ g₂, (f g₁).1 = (f g₂).1 → (f g₁).2 = (f g₂).2) :
    ∃ f' : H →ₗ[S] I, LinearMap.range f = LinearMap.graph f' := by
  obtain ⟨f', hf'⟩ :=
    AddMonoidHom.exists_mrange_eq_mgraph (G := G) (H := H) (I := I) (f := f) hf₁ hf
  simp only [SetLike.ext_iff, AddMonoidHom.mem_mrange, AddMonoidHom.coe_coe,
    AddMonoidHom.mem_mgraph] at hf'
  use
  { toFun := f'.toFun
    map_add' := f'.map_add'
    map_smul' := by
      intro s h
      simp only [ZeroHom.toFun_eq_coe, AddMonoidHom.toZeroHom_coe, RingHom.id_apply]
      refine (hf' (s • h, _)).mp ?_
      rw [← Prod.smul_mk, ← LinearMap.mem_range]
      apply Submodule.smul_mem
      rw [LinearMap.mem_range, hf'] }
  ext x
  simpa only [mem_range, Eq.comm, ZeroHom.toFun_eq_coe, AddMonoidHom.toZeroHom_coe, mem_graph_iff,
    coe_mk, AddHom.coe_mk, AddMonoidHom.coe_coe, Set.mem_range] using hf' x

/-- **Vertical line test** for linear maps.

Let `G ≤ H × I` be a submodule of a product of modules. Assume that `G` maps bijectively to the
first factor. Then `G` is the graph of some linear map `f : H →ₗ[R] I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a36aed6c9fdedfb795a22c512c5e78668fe2a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
