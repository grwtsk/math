# singleton_fibres_retain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c86b987e8a271d04dba08d78f8625dcb81c8f679",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a74b58c-0e02-7fcb-810b-72ad18050279",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f71dd02-dad9-1c10-c34e-e626309b0fd0",
  "kind": "theorem",
  "lexical_name": "singleton_fibres_retain",
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
  "slug": "singleton-fibres-retain--5d2e60c5bff6797c2cc28b30",
  "source": {
    "blob": "c86b987e8a271d04dba08d78f8625dcb81c8f679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 315,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d2e60c5bff6797c2cc28b3074506b00664ba8753a3041197c232efd5fa08ed7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f71dd02-dad9-1c10-c34e-e626309b0fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singleton_fibres_retain {B : Type u}
    (w : FiniteFibreWeights B (fun _ => Unit)) (f : B → Unit → ℝ) :
    w.averaging f = f := by
  apply w.averaging_eq_self
  intro b i j
  cases i; cases j
  rfl

end

end FiniteAveragingExamples

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86b987e8a271d04dba08d78f8625dcb81c8f679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
