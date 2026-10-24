# goursat_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d182979e-bc8e-26ba-f06f-2d7cc1ebe847",
  "kind": "lemma",
  "lexical_name": "goursat_surjective",
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
  "slug": "goursat-surjective--e217c2c4d4129c23e4a2c936",
  "source": {
    "blob": "f188e36ea307b8b0c4f67815c853e8c7e6c40fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e217c2c4d4129c23e4a2c936aee6fd7bc4b95bd47a1f335a9d148771eb22adf6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d182979e-bc8e-26ba-f06f-2d7cc1ebe847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma goursat_surjective : ∃ e : (M ⧸ L.goursatFst) ≃ₗ[R] N ⧸ L.goursatSnd,
    LinearMap.range ((L.goursatFst.mkQ.prodMap L.goursatSnd.mkQ).comp L.subtype) = e.graph := by
  -- apply add-group result
  obtain ⟨(e : M ⧸ L.goursatFst ≃+ N ⧸ L.goursatSnd), he⟩ :=
    L.toAddSubgroup.goursat_surjective hL₁ hL₂
  -- check R-linearity of the map
  have (r : R) (x : M ⧸ L.goursatFst) : e (r • x) = r • e x := by
    change (r • x, r • e x) ∈ e.toAddMonoidHom.graph
    rw [← he, ← Prod.smul_mk]
    have : (x, e x) ∈ e.toAddMonoidHom.graph := rfl
    rw [← he, AddMonoidHom.mem_range] at this
    rcases this with ⟨⟨l, hl⟩, hl'⟩
    use ⟨r • l, L.smul_mem r hl⟩
    rw [← hl']
    rfl
  -- define the map as an R-linear equiv
  use { e with map_smul' := this }
  rw [← toAddSubgroup_injective.eq_iff]
  convert! he using 1
  ext v
  rw [mem_toAddSubgroup, mem_graph_iff, Eq.comm]
  rfl

/-- **Goursat's lemma** for an arbitrary submodule of a product.

If `L` is a submodule of `M × N`, then there exist submodules `M'' ≤ M' ≤ M` and `N'' ≤ N' ≤ N` such
that `L ≤ M' × N'`, and `L` is (the image in `M × N` of) the preimage of the graph of an `R`-linear
isomorphism `M' ⧸ M'' ≃ N' ⧸ N''`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f188e36ea307b8b0c4f67815c853e8c7e6c40fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
