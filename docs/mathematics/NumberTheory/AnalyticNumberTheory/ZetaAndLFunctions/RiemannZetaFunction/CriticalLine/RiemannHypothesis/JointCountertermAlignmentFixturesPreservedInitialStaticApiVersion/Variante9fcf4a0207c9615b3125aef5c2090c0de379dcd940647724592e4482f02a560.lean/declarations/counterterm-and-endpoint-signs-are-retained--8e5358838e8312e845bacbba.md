# counterterm_and_endpoint_signs_are_retained

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "732cbcd692f6bab5d579f4035f01099da16e7a60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9fcf4a0207c9615b3125aef5c2090c0de379dcd940647724592e4482f02a560.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d24b8e83-cee1-3c83-a8e2-df143ce2ea00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7037bf87-cdc2-3b1b-535d-1b2a8f66993e",
  "kind": "theorem",
  "lexical_name": "counterterm_and_endpoint_signs_are_retained",
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
  "slug": "counterterm-and-endpoint-signs-are-retained--8e5358838e8312e845bacbba",
  "source": {
    "blob": "732cbcd692f6bab5d579f4035f01099da16e7a60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointCountertermAlignmentFixturesPreservedInitialStaticApiVersion/Variante9fcf4a0207c9615b3125aef5c2090c0de379dcd940647724592e4482f02a560.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e5358838e8312e845bacbba63c48e090377955e329839b47a7fd485f348d906",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointCountertermAlignmentFixturesPreservedInitialStaticApiVersion/Variante9fcf4a0207c9615b3125aef5c2090c0de379dcd940647724592e4482f02a560.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7037bf87-cdc2-3b1b-535d-1b2a8f66993e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem counterterm_and_endpoint_signs_are_retained :
    (20 - 3 - 2 - 5 - 7 + 11 : ℝ) ≠ (20 - 3 - 2 - 5 + 7 + 11 : ℝ) ∧
      (20 - 3 - 2 - 5 - 7 + 11 : ℝ) ≠ (20 - 3 - 2 - 5 - 7 : ℝ) := by norm_num

/-- A one-sided upper estimate alone neither bounds absolute value nor supplies positivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointCountertermAlignmentFixturesPreservedInitialStaticApiVersion/Variante9fcf4a0207c9615b3125aef5c2090c0de379dcd940647724592e4482f02a560.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointCountertermAlignmentFixturesPreservedInitialStaticApiVersion/Variante9fcf4a0207c9615b3125aef5c2090c0de379dcd940647724592e4482f02a560.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732cbcd692f6bab5d579f4035f01099da16e7a60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
