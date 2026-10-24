# Flat.generalizingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd49b11a74329a99910e113f7bf4980a90b84b77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ccbf5ad-64d9-fb9d-9a0a-e27b18255635",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eaf6a6e2-7303-1edc-0c5d-9c21f35345f0",
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
  "slug": "flat-generalizingmap--052f8d9d34e2effbd8fbebd7",
  "source": {
    "blob": "dd49b11a74329a99910e113f7bf4980a90b84b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 131,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:052f8d9d34e2effbd8fbebd71d5b84d70bc9a6bcb0be45a1d07b70348031bd1b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaf6a6e2-7303-1edc-0c5d-9c21f35345f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–143.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd49b11a74329a99910e113f7bf4980a90b84b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
