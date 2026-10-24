# Flat.generalizingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fe7f89e444f0d168b1c7dc080c82b148e9612c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:762c2050-dba5-27e3-c7cf-7fca4aad9967",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7abc45e-4423-c393-47f8-713f519d801c",
  "kind": "lemma",
  "lexical_name": "Flat.generalizingMap",
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
  "slug": "flat-generalizingmap--27653013431082c5b88cf5ee",
  "source": {
    "blob": "4fe7f89e444f0d168b1c7dc080c82b148e9612c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27653013431082c5b88cf5eefff98ac46e87dc385ce298d2f1fd3aae3fba7608",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7abc45e-4423-c393-47f8-713f519d801c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Flat.generalizingMap [Flat f] : GeneralizingMap f.base := by
  have := HasRingHomProperty.of_isLocalAtSource_of_isLocalAtTarget.{u}
    (topologically GeneralizingMap)
  show topologically GeneralizingMap f
  rw [HasRingHomProperty.iff_appLE (P := topologically GeneralizingMap)]
  intro U V e
  algebraize [(f.appLE U V e).hom]
  apply Algebra.HasGoingDown.iff_generalizingMap_primeSpectrumComap.mp
  convert Algebra.HasGoingDown.of_flat
  exact HasRingHomProperty.appLE @Flat f ‹_› U V e

/-- A flat morphism, locally of finite presentation is universally open. -/
@[stacks 01UA]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe7f89e444f0d168b1c7dc080c82b148e9612c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
