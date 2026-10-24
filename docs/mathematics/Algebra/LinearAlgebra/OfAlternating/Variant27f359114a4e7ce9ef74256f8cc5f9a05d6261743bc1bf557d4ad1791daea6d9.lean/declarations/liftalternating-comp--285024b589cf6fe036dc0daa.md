# liftAlternating_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5aad0631df420b25f5b8560b5bb72c3a4c824a23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82cfd9a6-fa98-14e1-6340-bf0175b6e74a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:915fec94-f039-d269-f749-e5e12a72252c",
  "kind": "theorem",
  "lexical_name": "liftAlternating_comp",
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
  "slug": "liftalternating-comp--285024b589cf6fe036dc0daa",
  "source": {
    "blob": "5aad0631df420b25f5b8560b5bb72c3a4c824a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:285024b589cf6fe036dc0daaffaa15ff5f30a3f29bb92c549baf3e40189f0ea0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:915fec94-f039-d269-f749-e5e12a72252c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftAlternating_comp (g : N →ₗ[R] N') (f : ∀ i, M [⋀^Fin i]→ₗ[R] N) :
    (liftAlternating (R := R) (M := M) (N := N') fun i => g.compAlternatingMap (f i)) =
    g ∘ₗ liftAlternating (R := R) (M := M) (N := N) f := by
  ext v
  rw [LinearMap.comp_apply]
  induction v using CliffordAlgebra.left_induction generalizing f with
  | algebraMap =>
    rw [liftAlternating_algebraMap, liftAlternating_algebraMap, map_smul,
      LinearMap.compAlternatingMap_apply]
  | add _ _ hx hy => rw [map_add, map_add, map_add, hx, hy]
  | ι_mul _ _ hx =>
    rw [liftAlternating_ι_mul, liftAlternating_ι_mul, ← hx]
    simp_rw [AlternatingMap.curryLeft_compAlternatingMap]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aad0631df420b25f5b8560b5bb72c3a4c824a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
