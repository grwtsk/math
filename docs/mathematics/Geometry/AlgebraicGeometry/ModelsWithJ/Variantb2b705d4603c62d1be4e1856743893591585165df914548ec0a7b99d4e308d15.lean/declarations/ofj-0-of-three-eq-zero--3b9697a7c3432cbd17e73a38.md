# ofJ_0_of_three_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:303c0766-181a-27b2-d320-1a07efb76064",
  "kind": "lemma",
  "lexical_name": "ofJ_0_of_three_eq_zero",
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
  "slug": "ofj-0-of-three-eq-zero--3b9697a7c3432cbd17e73a38",
  "source": {
    "blob": "9fa4539756fbbea70f666d9befbb63cdec7216b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 149,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ModelsWithJ/Variantb2b705d4603c62d1be4e1856743893591585165df914548ec0a7b99d4e308d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b9697a7c3432cbd17e73a389cea181306b0caa2a0fe43693a5fac3fd5c260a1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ModelsWithJ/Variantb2b705d4603c62d1be4e1856743893591585165df914548ec0a7b99d4e308d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:303c0766-181a-27b2-d320-1a07efb76064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofJ_0_of_three_eq_zero (h3 : (3 : F) = 0) : ofJ 0 = ofJ1728 F := by
  rw [ofJ, ite_eq_left rfl, ite_eq_left h3]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ModelsWithJ/Variantb2b705d4603c62d1be4e1856743893591585165df914548ec0a7b99d4e308d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ModelsWithJ/Variantb2b705d4603c62d1be4e1856743893591585165df914548ec0a7b99d4e308d15.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa4539756fbbea70f666d9befbb63cdec7216b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
