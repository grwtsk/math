# first_mobius_cutoff_is_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9746e2f9-6b99-885d-f556-e09e75fbf316",
  "kind": "theorem",
  "lexical_name": "first_mobius_cutoff_is_unit",
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
  "slug": "first-mobius-cutoff-is-unit--d6265b26626e97cdcb94d67a",
  "source": {
    "blob": "4f98a79eadaf12e155591d6f8594404f001e6e66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6265b26626e97cdcb94d67a8fb955ed1b36b18342b836c5412a97bd2dfcd87f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9746e2f9-6b99-885d-f556-e09e75fbf316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_mobius_cutoff_is_unit : lowPart 1 (μ : ArithmeticFunction ℝ) = 1 := by
  ext n
  by_cases hn : n ≤ 1
  · have hcases : n = 0 ∨ n = 1 := by omega
    rcases hcases with rfl | rfl
    · simp [lowPart]
    · simp [lowPart, ArithmeticFunction.intCoe_apply]
  · have hn1 : n ≠ 1 := by omega
    simp [lowPart, hn, ArithmeticFunction.one_apply_ne hn1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f98a79eadaf12e155591d6f8594404f001e6e66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
