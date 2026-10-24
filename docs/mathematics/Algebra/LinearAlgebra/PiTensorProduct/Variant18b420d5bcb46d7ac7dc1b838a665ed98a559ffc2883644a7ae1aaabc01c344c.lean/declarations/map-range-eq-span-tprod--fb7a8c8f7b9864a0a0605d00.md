# map_range_eq_span_tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:587a43ff-c77f-7736-1f6c-5053537ebc8d",
  "kind": "theorem",
  "lexical_name": "map_range_eq_span_tprod",
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
  "slug": "map-range-eq-span-tprod--fb7a8c8f7b9864a0a0605d00",
  "source": {
    "blob": "cba3fd966f52a3c97919797600bd09a70acef6fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 504,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant18b420d5bcb46d7ac7dc1b838a665ed98a559ffc2883644a7ae1aaabc01c344c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb7a8c8f7b9864a0a0605d001bcae71907a46ea31cd341cf500cd37ab3460222",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variant18b420d5bcb46d7ac7dc1b838a665ed98a559ffc2883644a7ae1aaabc01c344c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:587a43ff-c77f-7736-1f6c-5053537ebc8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_range_eq_span_tprod :
    LinearMap.range (map f) =
      Submodule.span R {t | ∃ (m : Π i, s i), tprod R (fun i ↦ f i (m i)) = t} := by
  rw [← Submodule.map_top, ← span_tprod_eq_top, Submodule.map_span, ← Set.range_comp]
  apply congrArg; ext x
  simp only [Set.mem_range, comp_apply, map_tprod, Set.mem_setOf_eq]

/-- Given submodules `p i ⊆ s i`, this is the natural map: `⨂[R] i, p i → ⨂[R] i, s i`.
This is `TensorProduct.mapIncl` for an arbitrary family of modules.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variant18b420d5bcb46d7ac7dc1b838a665ed98a559ffc2883644a7ae1aaabc01c344c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant18b420d5bcb46d7ac7dc1b838a665ed98a559ffc2883644a7ae1aaabc01c344c.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cba3fd966f52a3c97919797600bd09a70acef6fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
