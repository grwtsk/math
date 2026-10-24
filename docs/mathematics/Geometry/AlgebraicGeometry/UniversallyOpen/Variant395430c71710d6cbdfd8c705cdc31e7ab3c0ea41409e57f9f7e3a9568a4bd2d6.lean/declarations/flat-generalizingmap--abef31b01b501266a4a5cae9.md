# Flat.generalizingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13a6b450-d3f6-c2fe-4452-98b7d7cc8642",
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
  "slug": "flat-generalizingmap--abef31b01b501266a4a5cae9",
  "source": {
    "blob": "ae7fc3058f311b1077fd8a71e2d9cb76a64243bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 139,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant395430c71710d6cbdfd8c705cdc31e7ab3c0ea41409e57f9f7e3a9568a4bd2d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abef31b01b501266a4a5cae9b621a36e3f4c296caba2a45e0c31fe18879347eb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant395430c71710d6cbdfd8c705cdc31e7ab3c0ea41409e57f9f7e3a9568a4bd2d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13a6b450-d3f6-c2fe-4452-98b7d7cc8642`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Flat.generalizingMap [Flat f] : GeneralizingMap f := by
  have := HasRingHomProperty.of_isZariskiLocalAtSource_of_isZariskiLocalAtTarget.{u}
    (topologically GeneralizingMap)
  change topologically GeneralizingMap f
  rw [HasRingHomProperty.iff_appLE (P := topologically GeneralizingMap)]
  intro U V e
  algebraize [(f.appLE U V e).hom]
  apply Algebra.HasGoingDown.iff_generalizingMap_primeSpectrumComap.mp
  convert! Algebra.HasGoingDown.of_flat
  exact HasRingHomProperty.appLE @Flat f ‹_› U V e

/-- A flat morphism, locally of finite presentation is universally open. -/
@[stacks 01UA]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant395430c71710d6cbdfd8c705cdc31e7ab3c0ea41409e57f9f7e3a9568a4bd2d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant395430c71710d6cbdfd8c705cdc31e7ab3c0ea41409e57f9f7e3a9568a4bd2d6.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae7fc3058f311b1077fd8a71e2d9cb76a64243bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
