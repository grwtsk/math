# xiTraceTransfer_of_negligible₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d421d308-22a5-0aa4-23d7-65738aff7226",
  "kind": "theorem",
  "lexical_name": "xiTraceTransfer_of_negligible₁",
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
  "slug": "xitracetransfer-of-negligible--eafe596f411b651dd8e0caf1",
  "source": {
    "blob": "32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eafe596f411b651dd8e0caf1fe8d47480950ce01a88fc3811a75ff64fac92647",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d421d308-22a5-0aa4-23d7-65738aff7226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiTraceTransfer_of_negligible₁ (Z : ZeroConfig) (Pf : ℝ → Params) (F : CoeffFamily)
    (h : HatNegligible Z Pf (fun T => Z.Gz (Pf T) T - (Pf T).GpC T (F.c T))) :
    XiTraceTransfer Z Pf F := by
  -- write G − Mᵀ = (G − Mᵀ) + 0 and reuse the two-piece bookkeeping with E := G − Mᵀ, D := 0
  constructor
  · intro δ hδ
    filter_upwards [h δ hδ] with T hT
    set P := Pf T
    have : rtrace (P.hat T (Z.Gz P T)) - rtrace (P.hat T (P.GpC T (F.c T)))
        = rtrace (P.hat T (Z.Gz P T - P.GpC T (F.c T))) := by
      rw [hat_sub', rtrace_sub]
    rw [this]; exact hT.1
  · intro δ hδ
    set η : ℝ := min (δ / 2) (1 / 2) with hη
    have hη0 : 0 < η := lt_min (by positivity) (by norm_num)
    have hηδ : η ≤ δ / 2 := min_le_left _ _
    have hη1 : η ≤ 1 / 2 := min_le_right _ _
    filter_upwards [h η hη0] with T hT
    set P := Pf T
    have hdec : P.hat T (Z.Gz P T) = P.hat T (P.GpC T (F.c T))
        + P.hat T (Z.Gz P T - P.GpC T (F.c T)) + 0 := by
      rw [hat_sub']; abel
    have hN : (0:ℝ) ≤ (Z.N T (2 * T) : ℝ) := Nat.cast_nonneg _
    have h0 : frobSq (0 : Matrix (Fin (P.d T)) (Fin (P.d T)) ℂ) ≤ 0 ^ 2 * (Z.N T (2 * T) : ℝ) := by
      simp [Assembly.frobSq_eq_sum_norm_sq]
    have h := Transfer.frobSq_le_of_decomp hdec hN hη0.le le_rfl hT.2 h0
    have hm : 0 ≤ frobSq (P.hat T (P.GpC T (F.c T))) := Assembly.frobSq_nonneg _
    have h1 : 1 + (η + 0) ≤ 1 + δ := by linarith
    have h2 : (η + 0) + (η + 0) ^ 2 ≤ δ := by nlinarith
    calc frobSq (P.hat T (Z.Gz P T))
        ≤ (1 + (η + 0)) * frobSq (P.hat T (P.GpC T (F.c T))) + ((η + 0) + (η + 0) ^ 2) * (Z.N T (2 * T) : ℝ) := h
      _ ≤ (1 + δ) * frobSq (P.hat T (P.GpC T (F.c T))) + δ * (Z.N T (2 * T) : ℝ) := by gcongr

/-- **[XF′ Lemma 5.1 + 6.1 ⇒ XiTraceTransfer], the algebra**: if both E = G − M and D = M − Mᵀ are
HatNegligible then XiTraceTransfer holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
