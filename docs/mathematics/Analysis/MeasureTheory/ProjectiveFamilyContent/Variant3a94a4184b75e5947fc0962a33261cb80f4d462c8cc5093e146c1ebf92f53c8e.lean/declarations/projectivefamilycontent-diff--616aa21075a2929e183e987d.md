# projectiveFamilyContent_diff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25678c9c-2c5f-54d0-762a-b5e40ecd1660",
  "kind": "lemma",
  "lexical_name": "projectiveFamilyContent_diff",
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
  "slug": "projectivefamilycontent-diff--616aa21075a2929e183e987d",
  "source": {
    "blob": "ee2510313ef0bd2a4198222e6bbf8d8ec66af90d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 161,
    "path": "GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:616aa21075a2929e183e987da71ae299d5e54917c1b7f84a0d46e8e8cd3ba36a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25678c9c-2c5f-54d0-762a-b5e40ecd1660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projectiveFamilyContent_diff (hP : IsProjectiveMeasureFamily P)
    (hs : s ∈ measurableCylinders α) (ht : t ∈ measurableCylinders α) :
    projectiveFamilyContent hP s - projectiveFamilyContent hP t
      ≤ projectiveFamilyContent hP (s \ t) :=
  le_addContent_diff (projectiveFamilyContent hP) isSetRing_measurableCylinders hs ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2510313ef0bd2a4198222e6bbf8d8ec66af90d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
