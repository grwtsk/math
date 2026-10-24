# correlation_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40839317-191e-a7ef-0296-b41209e7392e",
  "kind": "theorem",
  "lexical_name": "correlation_deficit",
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
  "slug": "correlation-deficit--6ae13656d34e6ed54d75e710",
  "source": {
    "blob": "20fd5df40ca1da36be4f707e4eab6a314072d378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SelectedPrimeMean/Variantfd24c1c0160315a3eb79c32e2cbe1f4741fbe923a19904155d1f5d64742252c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae13656d34e6ed54d75e710e3b7f10bccd4668c5fd958892c53e209d87cf2ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SelectedPrimeMean/Variantfd24c1c0160315a3eb79c32e2cbe1f4741fbe923a19904155d1f5d64742252c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40839317-191e-a7ef-0296-b41209e7392e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_deficit {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    0 ≤ 1 - sourceCorrelation explicitSecondDerivative A s ∧
      1 - sourceCorrelation explicitSecondDerivative A s ≤
        162826 / (7623 * A ^ 2) * s ^ 2 / 2 := by
  have hp : 0 < A := by linarith
  have habs := actual_correlation_abs_le_one A s hA
  have hb := sourceCorrelation_linear_taylor_bound hA 0 s
  rw [zero_add, actual_correlation_at_zero A hA, correlation_deriv_zero hA, mul_zero, sub_zero] at hb
  exact ⟨by linarith [(abs_le.mp habs).2], by linarith [(abs_le.mp hb).1]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SelectedPrimeMean/Variantfd24c1c0160315a3eb79c32e2cbe1f4741fbe923a19904155d1f5d64742252c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SelectedPrimeMean/Variantfd24c1c0160315a3eb79c32e2cbe1f4741fbe923a19904155d1f5d64742252c2.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20fd5df40ca1da36be4f707e4eab6a314072d378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
