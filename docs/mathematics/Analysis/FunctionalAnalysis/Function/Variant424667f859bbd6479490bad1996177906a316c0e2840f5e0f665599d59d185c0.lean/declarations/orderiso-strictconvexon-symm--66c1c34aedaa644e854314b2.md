# OrderIso.strictConvexOn_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36d660ac-8de8-c579-dc41-b9f5859c011b",
  "kind": "theorem",
  "lexical_name": "OrderIso.strictConvexOn_symm",
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
  "slug": "orderiso-strictconvexon-symm--66c1c34aedaa644e854314b2",
  "source": {
    "blob": "81e9f348f8b747b7b61acc23a9358f06ebb73fff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1069,
    "line": 1060,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variant424667f859bbd6479490bad1996177906a316c0e2840f5e0f665599d59d185c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66c1c34aedaa644e854314b20ed9279f0ef131f53586e13a77d433e87861e34e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variant424667f859bbd6479490bad1996177906a316c0e2840f5e0f665599d59d185c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36d660ac-8de8-c579-dc41-b9f5859c011b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1060–1069.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrderIso.strictConvexOn_symm (f : α ≃o β) (hf : StrictConcaveOn 𝕜 univ f) :
    StrictConvexOn 𝕜 univ f.symm := by
  refine ⟨convex_univ, fun x _ y _ hxy a b ha hb hab => ?_⟩
  obtain ⟨x', hx''⟩ := f.surjective.exists.mp ⟨x, rfl⟩
  obtain ⟨y', hy''⟩ := f.surjective.exists.mp ⟨y, rfl⟩
  have hxy' : x' ≠ y' := by rw [← f.injective.ne_iff, ← hx'', ← hy'']; exact hxy
  simp only [hx'', hy'', OrderIso.symm_apply_apply, gt_iff_lt]
  rw [← f.lt_iff_lt, OrderIso.apply_symm_apply]
  exact hf.2 (by simp : x' ∈ univ) (by simp : y' ∈ univ) hxy' ha hb hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variant424667f859bbd6479490bad1996177906a316c0e2840f5e0f665599d59d185c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variant424667f859bbd6479490bad1996177906a316c0e2840f5e0f665599d59d185c0.lean#L1060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e9f348f8b747b7b61acc23a9358f06ebb73fff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
