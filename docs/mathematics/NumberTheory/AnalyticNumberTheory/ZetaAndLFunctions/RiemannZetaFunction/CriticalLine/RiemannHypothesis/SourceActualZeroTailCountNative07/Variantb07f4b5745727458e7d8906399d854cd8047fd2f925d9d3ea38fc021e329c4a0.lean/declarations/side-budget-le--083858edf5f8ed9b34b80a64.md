# side_budget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a617b81-3363-04b4-d1c6-ac152ca12fb5",
  "kind": "theorem",
  "lexical_name": "side_budget_le",
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
  "slug": "side-budget-le--083858edf5f8ed9b34b80a64",
  "source": {
    "blob": "12b86cacdf5328afbb82df982a7e71278673cd7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative07/Variantb07f4b5745727458e7d8906399d854cd8047fd2f925d9d3ea38fc021e329c4a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:083858edf5f8ed9b34b80a64899cc23028a3b184d2905129f2a74d11d15e9014",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative07/Variantb07f4b5745727458e7d8906399d854cd8047fd2f925d9d3ea38fc021e329c4a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a617b81-3363-04b4-d1c6-ac152ca12fb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem side_budget_le (R : ℝ) (hR : 4 ≤ R) :
    (2 * (R ^ 3)⁻¹ + (R ^ 2)⁻¹ / 2) * Real.log R +
      (2 * (R ^ 2)⁻¹ + R⁻¹) / R ≤ (Real.log R + 2) / R ^ 2 := by
  have hp : 0 < R := by linarith
  have hl : 0 ≤ Real.log R := Real.log_nonneg (by linarith)
  have h1 : 2 * (R ^ 3)⁻¹ + (R ^ 2)⁻¹ / 2 ≤ (R ^ 2)⁻¹ := by
    field_simp
    nlinarith
  have h2 : (2 * (R ^ 2)⁻¹ + R⁻¹) / R ≤ 2 * (R ^ 2)⁻¹ := by
    field_simp
    nlinarith
  calc
    _ ≤ (R ^ 2)⁻¹ * Real.log R + 2 * (R ^ 2)⁻¹ :=
      add_le_add (mul_le_mul_of_nonneg_right h1 hl) h2
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative07/Variantb07f4b5745727458e7d8906399d854cd8047fd2f925d9d3ea38fc021e329c4a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative07/Variantb07f4b5745727458e7d8906399d854cd8047fd2f925d9d3ea38fc021e329c4a0.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b86cacdf5328afbb82df982a7e71278673cd7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
