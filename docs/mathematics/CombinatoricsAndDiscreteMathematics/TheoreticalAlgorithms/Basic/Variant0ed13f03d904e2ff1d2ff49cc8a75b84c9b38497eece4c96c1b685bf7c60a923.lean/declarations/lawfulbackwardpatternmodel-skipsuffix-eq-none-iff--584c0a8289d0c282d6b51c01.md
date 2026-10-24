# LawfulBackwardPatternModel.skipSuffix?_eq_none_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1af594f3-532d-1e83-ce65-7aa53eb1fa7b",
  "kind": "theorem",
  "lexical_name": "LawfulBackwardPatternModel.skipSuffix?_eq_none_iff",
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
  "slug": "lawfulbackwardpatternmodel-skipsuffix-eq-none-iff--584c0a8289d0c282d6b51c01",
  "source": {
    "blob": "be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 848,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:584c0a8289d0c282d6b51c01901de04b7f0bc24b3b6d5b6eed35db301a909e0d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af594f3-532d-1e83-ce65-7aa53eb1fa7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 848–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulBackwardPatternModel.skipSuffix?_eq_none_iff {ρ : Type} {pat : ρ} [BackwardPattern pat] [PatternModel pat]
    [LawfulBackwardPatternModel pat] {s : Slice} :
    BackwardPattern.skipSuffix? pat s = none ↔ ¬ RevMatchesAt pat s.endPos := by
  conv => lhs; rw [← sliceTo_endPos (s := s)]
  simp [skipSuffix?_sliceTo_eq_none_iff]

/--
Inductive predicate stating that a list of search steps represents a valid search from a given
position in a slice.

"Searching" here means always taking the longest match at the first position where the pattern
matches.

Hence, this predicate determines the list of search steps up to grouping of rejections.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean#L848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
