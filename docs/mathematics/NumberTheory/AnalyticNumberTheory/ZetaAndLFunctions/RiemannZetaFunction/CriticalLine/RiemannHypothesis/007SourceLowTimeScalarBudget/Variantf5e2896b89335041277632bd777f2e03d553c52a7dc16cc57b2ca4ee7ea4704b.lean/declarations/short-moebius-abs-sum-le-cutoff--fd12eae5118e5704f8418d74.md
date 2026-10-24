# short_moebius_abs_sum_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f01f4e1b035b5472077dae86260163188b4cc7d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c703a7c6-85d5-c646-3dcb-f840b8a65a37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbe3a767-74e6-95ae-5aff-38c0bd3ccb08",
  "kind": "theorem",
  "lexical_name": "short_moebius_abs_sum_le_cutoff",
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
  "slug": "short-moebius-abs-sum-le-cutoff--fd12eae5118e5704f8418d74",
  "source": {
    "blob": "f01f4e1b035b5472077dae86260163188b4cc7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd12eae5118e5704f8418d74dca2ec8a12dc11213dc36259d7a7d003ea33d01f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbe3a767-74e6-95ae-5aff-38c0bd3ccb08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem short_moebius_abs_sum_le_cutoff (U : ℕ) :
    (∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ)|) ≤ (U : ℝ) := by
  calc
    _ ≤ ∑ _d ∈ Finset.Icc 1 U, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro d _
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
    _ = _ := by simp

/-- This uses the original centered row, not a substitute bounded coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f01f4e1b035b5472077dae86260163188b4cc7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
