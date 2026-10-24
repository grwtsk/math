# eval_split_left_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa3620993e27109bf4addd4389bd9de4a9dcf9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 498,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cdb956e-dcb5-105b-beb3-895b4b7cfccd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3891648c-25c7-0ff6-caa6-6ae34a48323e",
  "kind": "theorem",
  "lexical_name": "eval_split_left_canonical",
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
  "slug": "eval-split-left-canonical--a499727e2416d4ae66105b6d",
  "source": {
    "blob": "daa3620993e27109bf4addd4389bd9de4a9dcf9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 498,
    "path": "GRWTSK/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a499727e2416d4ae66105b6dd695f13b2cf10c24a1067004d5bc706131e2d2a4",
  "verification": {
    "reference": "docs/verification/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3891648c-25c7-0ff6-caa6-6ae34a48323e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_split_left_canonical
    (C : RationalSegment M degree) (tau t : UnitInterval) :
    (splitAt C tau).1.eval t = C.eval (leftParameter tau t) := by
  change (splitLeftSegment C tau).eval t = C.eval (leftParameter tau t)
  rw [← rationalEval_homogeneousControl (splitLeftSegment C tau) t]
  rw [homogeneousControl_splitLeftSegment]
  rw [rationalEval_split_left]
  change rationalEval degree (homogeneousControl C)
      (leftParameter tau t).1 = C.eval (leftParameter tau t)
  exact rationalEval_homogeneousControl C (leftParameter tau t)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa3620993e27109bf4addd4389bd9de4a9dcf9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
