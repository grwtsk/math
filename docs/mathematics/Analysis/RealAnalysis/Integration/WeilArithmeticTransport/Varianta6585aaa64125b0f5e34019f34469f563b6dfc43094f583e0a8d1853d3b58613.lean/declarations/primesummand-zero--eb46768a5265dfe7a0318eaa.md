# primeSummand_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d20c9d3-2907-7895-7308-77884f4485af",
  "kind": "theorem",
  "lexical_name": "primeSummand_zero",
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
  "slug": "primesummand-zero--eb46768a5265dfe7a0318eaa",
  "source": {
    "blob": "07ecb35fd6980df298a024db980019e2d92c3606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb46768a5265dfe7a0318eaaa61dcfb7199ac40f49ee8240b9c1bbbdbb209b75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d20c9d3-2907-7895-7308-77884f4485af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primeSummand_zero
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (hε1 : ε ≤ 1)
    (n : ℕ) (hout : n ∉ primeIndices (A + 1)) :
    primeSummand A ε hε n = 0 := by
  by_cases hn : 2 ≤ n
  · have hexp : Real.exp (2 * (A + 1)) ≤ (n : ℝ) := by
      by_contra h
      exact hout ((mem_primeIndices_iff (A + 1) n).mpr ⟨hn, lt_of_not_ge h⟩)
    have hlog : 2 * (A + 1) ≤ Real.log n := by
      simpa only [Real.log_exp] using
        Real.log_le_log (Real.exp_pos (2 * (A + 1))) hexp
    have hk : smoothKernel A ε hε (Real.log n) = 0 := by
      by_contra h
      have hs := smoothKernel_support_open A ε hA hε hε1 h
      linarith [hs.2]
    rw [primeSummand, smoothKernel_even A ε hA hε, hk]
    simp
  · have hsmall : n = 0 ∨ n = 1 := by omega
    rcases hsmall with rfl | rfl <;> simp [primeSummand]

/-- The all-natural-number literature prime sum is exactly the source's strict
finite prime-power sum at the fixed smoothing radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07ecb35fd6980df298a024db980019e2d92c3606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
