# GeneratedSemanticObligations.obligations_empty_implies_sources_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "317f4e564bdbe671f0f60a3c64462bffd84f70e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a22e63b-9c19-c5d1-2911-1e2dcb58b54a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11c77572-670d-c31d-e4f6-5c1b1c089403",
  "kind": "theorem",
  "lexical_name": "GeneratedSemanticObligations.obligations_empty_implies_sources_empty",
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
  "slug": "generatedsemanticobligations-obligations-empty-implies-sources-empty--9103853b826f84ed163e656d",
  "source": {
    "blob": "317f4e564bdbe671f0f60a3c64462bffd84f70e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9103853b826f84ed163e656d89e188238d5b5349eb1b7c8f1ea6864bc1a9763a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11c77572-670d-c31d-e4f6-5c1b1c089403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GeneratedSemanticObligations.obligations_empty_implies_sources_empty
    {text : TextCarrier}
    (generated : GeneratedSemanticObligations text)
    (obligations_empty : generated.obligations = []) :
    generated.sourceUnknowns = [] := by
  cases sourceEquation : generated.sourceUnknowns with
  | nil =>
      rfl
  | cons head tail =>
      have countExact :=
        generated.obligation_count_exact
      rw [obligations_empty, sourceEquation] at countExact
      simp at countExact

/-!
The frame is the immutable semantic-admission identity of a committed cut.
Acceptance and completion certificates are indexed by this value, preventing a
certificate from substituting its own policy, snapshot, generated obligations,
or unresolved set.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317f4e564bdbe671f0f60a3c64462bffd84f70e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
