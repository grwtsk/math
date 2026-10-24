# cycle_data_does_not_determine_sac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59ff732f-05e1-c655-3694-d9ae9cacd6f2",
  "kind": "theorem",
  "lexical_name": "cycle_data_does_not_determine_sac",
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
  "slug": "cycle-data-does-not-determine-sac--735dc7fd81d9a9a46d593656",
  "source": {
    "blob": "632f7dc194336a85b2851b807220858f42f52108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeExamples/Variant0779bbb06ae5b5ab77ac723c54ab1c71816b46a75c694912705b8857b7dfacbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:735dc7fd81d9a9a46d593656f830447fb03bda1497b4718e2db8d094eb34cc5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NegativeExamples/Variant0779bbb06ae5b5ab77ac723c54ab1c71816b46a75c694912705b8857b7dfacbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59ff732f-05e1-c655-3694-d9ae9cacd6f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycle_data_does_not_determine_sac :
    ∃ left right : BitPerm 3,
      cycleEulerFactorData left = cycleEulerFactorData right ∧
      sacScore left ≠ sacScore right :=
  ⟨stateSwap67, stateSwap56,
    stateSwaps_same_cycle_data,
    stateSwaps_different_sac⟩

/-- The identity permutation on two coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NegativeExamples/Variant0779bbb06ae5b5ab77ac723c54ab1c71816b46a75c694912705b8857b7dfacbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NegativeExamples/Variant0779bbb06ae5b5ab77ac723c54ab1c71816b46a75c694912705b8857b7dfacbe.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `632f7dc194336a85b2851b807220858f42f52108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
