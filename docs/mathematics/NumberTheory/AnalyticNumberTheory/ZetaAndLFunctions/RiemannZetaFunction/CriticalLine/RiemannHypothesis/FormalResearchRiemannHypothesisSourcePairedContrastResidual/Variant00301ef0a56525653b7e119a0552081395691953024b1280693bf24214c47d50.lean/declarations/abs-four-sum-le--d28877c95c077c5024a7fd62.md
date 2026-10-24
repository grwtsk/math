# abs_four_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8691c07d-7dcb-dce1-d1e6-e7125a340434",
  "kind": "theorem",
  "lexical_name": "abs_four_sum_le",
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
  "slug": "abs-four-sum-le--d28877c95c077c5024a7fd62",
  "source": {
    "blob": "068b9a8d742e22e3fdd2d9f394524a1b07b5dfaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedContrastResidual/Variant00301ef0a56525653b7e119a0552081395691953024b1280693bf24214c47d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28877c95c077c5024a7fd62f0773b0c02b8950143e1aa88173f982849a3ef4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedContrastResidual/Variant00301ef0a56525653b7e119a0552081395691953024b1280693bf24214c47d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8691c07d-7dcb-dce1-d1e6-e7125a340434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_four_sum_le (a b c d : ℝ) :
    |a+b+c+d| ≤ |a|+|b|+|c|+|d| := by
  calc
    _ ≤ |a+b+c|+|d| := abs_add_le (a+b+c) d
    _ ≤ |a+b|+|c|+|d| := add_le_add (abs_add_le (a+b) c) (le_refl |d|)
    _ ≤ |a|+|b|+|c|+|d| :=
      add_le_add (add_le_add (abs_add_le a b) (le_refl |c|)) (le_refl |d|)

/-- All four literal correction components have an unconditional common budget.
This bounds the remainder only, not the correlated main-subtracted contrast. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedContrastResidual/Variant00301ef0a56525653b7e119a0552081395691953024b1280693bf24214c47d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedContrastResidual/Variant00301ef0a56525653b7e119a0552081395691953024b1280693bf24214c47d50.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068b9a8d742e22e3fdd2d9f394524a1b07b5dfaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
