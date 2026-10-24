# actual_source_edge_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eef2d4d-7831-bbaa-c5b3-9a69837358d5",
  "kind": "theorem",
  "lexical_name": "actual_source_edge_lower",
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
  "slug": "actual-source-edge-lower--d71fd913b5fd7d8aadc42499",
  "source": {
    "blob": "d41f66f2767488bfbfe6e5900a0e57a8e1399952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeProfile/Variant593eb02ab67b29bcbfbf5f37635a7dbf8bc6629e3d42d1cb7e702188a38c8a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d71fd913b5fd7d8aadc42499853c712ebaa76a64cd61d08e5484c90aeed0e64f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeProfile/Variant593eb02ab67b29bcbfbf5f37635a7dbf8bc6629e3d42d1cb7e702188a38c8a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eef2d4d-7831-bbaa-c5b3-9a69837358d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_edge_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs0 : 0 ≤ s) (hs2 : s ≤ 2) :
    s ^ 2 / (A ^ 4 * Real.sqrt A) ≤
      dilationTest explicitSecondDerivative A (A - s) := by
  have hpos : 0 < A := by linarith
  have hmem : A - s ∈ Icc (-A) A := by constructor <;> linarith
  rw [explicit_dilationTest_eq_indicator A hpos, indicator_of_mem hmem,
    exact_source_edge_factorization hpos]
  exact le_mul_of_one_le_right (by positivity) (complete_edge_factor_lower hA hs0 hs2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeProfile/Variant593eb02ab67b29bcbfbf5f37635a7dbf8bc6629e3d42d1cb7e702188a38c8a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeProfile/Variant593eb02ab67b29bcbfbf5f37635a7dbf8bc6629e3d42d1cb7e702188a38c8a8a.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d41f66f2767488bfbfe6e5900a0e57a8e1399952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
