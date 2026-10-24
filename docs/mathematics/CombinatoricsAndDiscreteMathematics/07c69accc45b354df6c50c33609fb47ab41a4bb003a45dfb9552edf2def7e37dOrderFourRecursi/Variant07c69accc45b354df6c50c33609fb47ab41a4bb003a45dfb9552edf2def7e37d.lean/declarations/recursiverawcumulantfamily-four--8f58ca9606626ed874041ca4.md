# recursiveRawCumulantFamily_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e3db9c319ef295edd69a605e31d0a234b987bb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2781c6c-8d10-35e2-5cbe-ccd871a07a2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa6f7aa8-2d9c-31d7-52de-a907894d7423",
  "kind": "theorem",
  "lexical_name": "recursiveRawCumulantFamily_four",
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
  "slug": "recursiverawcumulantfamily-four--8f58ca9606626ed874041ca4",
  "source": {
    "blob": "3e3db9c319ef295edd69a605e31d0a234b987bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1121,
    "line": 1104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f58ca9606626ed874041ca43de7f8fe07fa1b59f316edf40ab31c8ef87f2a3a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa6f7aa8-2d9c-31d7-52de-a907894d7423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1104–1121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveRawCumulantFamily_four
    (theta : E)
    (d : Fin 4 → E) :
    F.recursiveRawCumulantFamily theta 4 d =
      F.fourthDirectionalCumulant theta d := by
  rw [recursiveRawCumulantFamily,
    recursiveCumulantFamily_eq_moment_sub_proper
      (F.rawMomentHierarchy theta) 4 (Nat.succ_pos 3) d]
  change F.rawMomentHierarchy theta 4 d -
      directionalProperContribution 4 (Nat.succ_pos 3)
        (F.recursiveRawCumulantFamily theta) d =
    F.fourthDirectionalCumulant theta d
  rw [F.recursiveRawProperContribution_four,
    F.rawMomentHierarchy_four_eq_cumulants]
  ring

/-- Recursive raw cumulants agree with the independently verified analytic
prefix through order four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean#L1104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3db9c319ef295edd69a605e31d0a234b987bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
