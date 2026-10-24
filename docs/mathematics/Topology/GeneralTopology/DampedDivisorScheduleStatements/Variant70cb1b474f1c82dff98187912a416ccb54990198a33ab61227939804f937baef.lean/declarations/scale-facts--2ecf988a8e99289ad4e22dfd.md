# scale_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a5d19bf98acf93abcc580c737c055b92cc1f2d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88a30194-98a3-dbfb-2cc3-f61ff09ff0bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:669ba0ff-3176-4ee6-3c86-9b0408bad435",
  "kind": "theorem",
  "lexical_name": "scale_facts",
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
  "slug": "scale-facts--2ecf988a8e99289ad4e22dfd",
  "source": {
    "blob": "7a5d19bf98acf93abcc580c737c055b92cc1f2d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 18,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ecf988a8e99289ad4e22dfdd4dc3faa0151b3d9acbc4dc82414e6fac38f745c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:669ba0ff-3176-4ee6-3c86-9b0408bad435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scale_facts (X : ℕ) (hX : 1 ≤ X) :
    0 < (X : ℝ) ∧ 1 ≤ logScale X ∧ 0 < logScale X := by
  have hx : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hL : 1 ≤ logScale X := by
    unfold logScale
    linarith [Real.log_nonneg hx]
  exact ⟨by linarith, hL, by linarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a5d19bf98acf93abcc580c737c055b92cc1f2d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
