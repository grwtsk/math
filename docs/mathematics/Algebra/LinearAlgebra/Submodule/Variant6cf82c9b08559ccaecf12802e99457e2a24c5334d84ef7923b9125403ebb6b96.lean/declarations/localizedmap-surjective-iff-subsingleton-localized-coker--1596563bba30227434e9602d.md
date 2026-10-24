# localizedMap_surjective_iff_subsingleton_localized_coker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c617be0-43d9-e8c1-333b-39523bdde179",
  "kind": "lemma",
  "lexical_name": "localizedMap_surjective_iff_subsingleton_localized_coker",
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
  "slug": "localizedmap-surjective-iff-subsingleton-localized-coker--1596563bba30227434e9602d",
  "source": {
    "blob": "cc06937d994efab6beec8afc09e8ec2ea7d0fe7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 382,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1596563bba30227434e9602d7260aefd20bb187fcd45b2dbf302fc7da43542fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c617be0-43d9-e8c1-333b-39523bdde179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma localizedMap_surjective_iff_subsingleton_localized_coker {R M N : Type*} [CommRing R]
    [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N] (S : Submonoid R) (φ : M →ₗ[R] N) :
    Function.Surjective (LocalizedModule.map S φ) ↔
      Subsingleton (LocalizedModule S (N ⧸ φ.range)) := by
  simp [(localizedQuotientEquiv S φ.range).symm.subsingleton_congr,
    LinearMap.localized'_range_eq_range_localizedMap (Localization S) S
      (LocalizedModule.mkLinearMap S M) (LocalizedModule.mkLinearMap S N),
    LinearMap.range_eq_top, LocalizedModule.map, mapExtendScalars]

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc06937d994efab6beec8afc09e8ec2ea7d0fe7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
