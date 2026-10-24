# xiTraceTransfer_of_negligible₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f76fdc6-6e99-01b7-214f-d0dc359f4bb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45faf499-502b-b2fb-ad0b-1f58119718be",
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
  "slug": "xitracetransfer-of-negligible--1b7a63d3d3402a006437a2c9",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b7a63d3d3402a006437a2c980f20b80292b4639156b5ad78f3707ab8171d4a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45faf499-502b-b2fb-ad0b-1f58119718be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–161.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
