# correctedNativeHead_tail_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ad472e9-3368-644b-6a7c-3fb601a806c6",
  "kind": "theorem",
  "lexical_name": "correctedNativeHead_tail_norm",
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
  "slug": "correctednativehead-tail-norm--c73df102c59351b410401bdc",
  "source": {
    "blob": "7d43ccb39fc7a47be49f854c59a76b0c46dd709c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplications/Variantc925cfc36cbe696e078c370f7ec3eab11c2b6f961ad9ff498e42bdbe24927d16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c73df102c59351b410401bdc88a2a570eb64de9c90152c20f4f9f1a1a6f9154f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplications/Variantc925cfc36cbe696e078c370f7ec3eab11c2b6f961ad9ff498e42bdbe24927d16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ad472e9-3368-644b-6a7c-3fb601a806c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNativeHead_tail_norm (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T) :
    ‖((mertensResidual A : ℂ) - (rightLineMajorant 2 : ℂ)) - correctedNativeHead A T‖ ≤
      twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * T ^ 5) := by
  rw [correctedNativeHead_eq_head_sub_constant A T hA]
  convert mertensResidual_sub_head_norm_bound A T hA hT using 1
  congr 1
  ring

/-- Constant shifting preserves the actual integrated growing-tail norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplications/Variantc925cfc36cbe696e078c370f7ec3eab11c2b6f961ad9ff498e42bdbe24927d16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplications/Variantc925cfc36cbe696e078c370f7ec3eab11c2b6f961ad9ff498e42bdbe24927d16.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d43ccb39fc7a47be49f854c59a76b0c46dd709c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
