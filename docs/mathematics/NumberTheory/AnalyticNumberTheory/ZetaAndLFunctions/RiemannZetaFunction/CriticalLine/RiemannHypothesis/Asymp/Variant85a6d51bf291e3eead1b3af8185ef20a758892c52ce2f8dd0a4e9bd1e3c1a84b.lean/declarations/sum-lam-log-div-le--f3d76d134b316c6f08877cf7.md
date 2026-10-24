# sum_lam_log_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cee78f3a-9954-6070-b7c0-329551a0f93a",
  "kind": "lemma",
  "lexical_name": "sum_lam_log_div_le",
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
  "slug": "sum-lam-log-div-le--f3d76d134b316c6f08877cf7",
  "source": {
    "blob": "e9fb2ca771d837461fed0d1d934229c7ec1bce08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variant85a6d51bf291e3eead1b3af8185ef20a758892c52ce2f8dd0a4e9bd1e3c1a84b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3d76d134b316c6f08877cf700575b1598b3b7e9c852d256a22f6bd9ccc5c48d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variant85a6d51bf291e3eead1b3af8185ef20a758892c52ce2f8dd0a4e9bd1e3c1a84b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cee78f3a-9954-6070-b7c0-329551a0f93a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_lam_log_div_le {u : ℝ} (hu : 0 ≤ u) :
    ∑ d ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ d * Real.log d / d ≤ u * (u + KM) := by
  calc ∑ d ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ d * Real.log d / d
      ≤ ∑ d ∈ Ioc 0 ⌊Real.exp u⌋₊, u * (Λ d / d) := by
        refine sum_le_sum fun d hd => ?_
        have hlog : Real.log d ≤ u := log_le_of_mem_Ioc_floor_exp hd
        have h0 : 0 ≤ Λ d / d := div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg d)
        calc Λ d * Real.log d / d = Real.log d * (Λ d / d) := by ring
          _ ≤ u * (Λ d / d) := mul_le_mul_of_nonneg_right hlog h0
    _ = u * Sdiv Λ u := by rw [← mul_sum]; rfl
    _ ≤ u * (u + KM) := mul_le_mul_of_nonneg_left (Sdiv_lam_le hu) hu

/-- **the one-variable Mertens sums**  Σ_{n ≤ e^u} Λ(n)/n·(log n)^j = u^{j+1}/(j+1) + O((1+u)^j)
(mertens_step with f(v) = v^j; j = 1 is Tk 1, and j = 1, 2, 3 are the three sums of the k = 1 (prime) term). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variant85a6d51bf291e3eead1b3af8185ef20a758892c52ce2f8dd0a4e9bd1e3c1a84b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variant85a6d51bf291e3eead1b3af8185ef20a758892c52ce2f8dd0a4e9bd1e3c1a84b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9fb2ca771d837461fed0d1d934229c7ec1bce08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
