# sfPart_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da7b95d7-cb18-89a8-0949-46d1cc83cb68",
  "kind": "lemma",
  "lexical_name": "sfPart_zero",
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
  "slug": "sfpart-zero--cc97b86fc4b77fabbad8548a",
  "source": {
    "blob": "0ef34d40b3c1cb9c6869450e8416da1cbfe03320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant2fa4376ff40135e7c9fa4cc6ca184a5e91ddca070a7381b58f50302764704b87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc97b86fc4b77fabbad8548a543c8ee88328594fac3cdeb8c6c2065f2c2ab124",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant2fa4376ff40135e7c9fa4cc6ca184a5e91ddca070a7381b58f50302764704b87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7b95d7-cb18-89a8-0949-46d1cc83cb68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sfPart_zero (Λs : ℂ) (y : ℝ) : sfPart Λs 0 y = 0 := by
  unfold sfPart
  refine sum_eq_zero fun N hN => ?_
  obtain ⟨-, hsf, h0⟩ := mem_filter.mp hN
  have hN1 : N ≤ 1 := ArithmeticFunction.cardDistinctFactors_eq_zero.mp h0
  have hN0 : N ≠ 0 := Squarefree.ne_zero hsf
  have : N = 1 := by omega
  subst this
  simp

/-! ### the remainder layer is small:  bPart ≤ C_K·(1+l) + (tail)·l² -/

/-- N in the remainder layer with Λ^{∗m}(N) ≠ 0 for some m ≤ K is not squarefree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant2fa4376ff40135e7c9fa4cc6ca184a5e91ddca070a7381b58f50302764704b87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant2fa4376ff40135e7c9fa4cc6ca184a5e91ddca070a7381b58f50302764704b87.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef34d40b3c1cb9c6869450e8416da1cbfe03320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
