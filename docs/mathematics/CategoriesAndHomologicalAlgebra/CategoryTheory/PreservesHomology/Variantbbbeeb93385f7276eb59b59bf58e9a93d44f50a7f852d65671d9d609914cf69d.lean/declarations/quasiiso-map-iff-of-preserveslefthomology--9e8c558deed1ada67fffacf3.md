# quasiIso_map_iff_of_preservesLeftHomology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0e552ab-32e9-8317-e7d7-178833fb6e1e",
  "kind": "lemma",
  "lexical_name": "quasiIso_map_iff_of_preservesLeftHomology",
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
  "slug": "quasiiso-map-iff-of-preserveslefthomology--9e8c558deed1ada67fffacf3",
  "source": {
    "blob": "e9ba1cf42c53d58773a6d6574ce5a0f6f4154b67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 834,
    "line": 822,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e8c558deed1ada67fffacf3c9c8133225ccd8cd6183fdd821ba196e1d9a7282",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0e552ab-32e9-8317-e7d7-178833fb6e1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–834.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_map_iff_of_preservesLeftHomology
    [F.PreservesLeftHomologyOf S₁] [F.PreservesLeftHomologyOf S₂]
    [F.ReflectsIsomorphisms] :
    QuasiIso (F.mapShortComplex.map φ) ↔ QuasiIso φ := by
  have γ : LeftHomologyMapData φ S₁.leftHomologyData S₂.leftHomologyData := default
  rw [γ.quasiIso_iff, (γ.map F).quasiIso_iff, LeftHomologyMapData.map_φH]
  constructor
  · intro
    exact isIso_of_reflects_iso _ F
  · intro
    infer_instance

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ba1cf42c53d58773a6d6574ce5a0f6f4154b67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
