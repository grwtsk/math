# preservesEpimorphisms_of_map_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1283787-44f4-3cff-e773-9fa33f721089",
  "kind": "theorem",
  "lexical_name": "preservesEpimorphisms_of_map_exact",
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
  "slug": "preservesepimorphisms-of-map-exact--e2ccaef5572016a87a9631f1",
  "source": {
    "blob": "b00c4ce2d0f5a6ffbf5c0778331fb842f1d1d623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2ccaef5572016a87a9631f19fe1115d0028623df4eb98f40edf3f962853cdfd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1283787-44f4-3cff-e773-9fa33f721089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preservesEpimorphisms_of_map_exact : L.PreservesEpimorphisms where
  preserves f hf := by
    apply ((Abelian.tfae_epi (L.map f) (L.obj 0)).out 3 1).mp
    refine ShortComplex.exact_of_iso ?_ (hL _ (((tfae_epi f 0).out 1 3).mp hf))
    exact ShortComplex.isoMk (Iso.refl _) (Iso.refl _) (Iso.refl _)

set_option backward.defeqAttrib.useBackward true in
/-- A functor which preserves the exactness of short complexes preserves homology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00c4ce2d0f5a6ffbf5c0778331fb842f1d1d623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
