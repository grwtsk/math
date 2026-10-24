# preimage_inversion_perpBisector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60e19c2e-6526-a07c-d0ba-9f42113d749e",
  "kind": "theorem",
  "lexical_name": "preimage_inversion_perpBisector",
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
  "slug": "preimage-inversion-perpbisector--59842620fcb8d97083eee3bd",
  "source": {
    "blob": "84b37f71194fb869740c723b3c2c3c11380a2817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 68,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variante42ac77b116995381156ca098819f151c788c695ac023fb1880009c9912cb7ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59842620fcb8d97083eee3bd0b3ebcb02cdbde43566a826c24b46094e5a8b25e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variante42ac77b116995381156ca098819f151c788c695ac023fb1880009c9912cb7ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60e19c2e-6526-a07c-d0ba-9f42113d749e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_inversion_perpBisector (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R ⁻¹' perpBisector c y = sphere (inversion c R y) (R ^ 2 / dist y c) \ {c} := by
  rw [← dist_inversion_center, ← preimage_inversion_perpBisector_inversion hR,
    inversion_inversion] <;> simp [*]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variante42ac77b116995381156ca098819f151c788c695ac023fb1880009c9912cb7ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variante42ac77b116995381156ca098819f151c788c695ac023fb1880009c9912cb7ff.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b37f71194fb869740c723b3c2c3c11380a2817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
