# traceNorm_smul_Ez_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac02f8fb-41af-245d-65f9-1fb8b8e7d371",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c498f078-cca2-688d-3b12-c21c41a5bfdd",
  "kind": "theorem",
  "lexical_name": "traceNorm_smul_Ez_le",
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
  "slug": "tracenorm-smul-ez-le--185f0aeb9e8718b47a270cf2",
  "source": {
    "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 423,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:185f0aeb9e8718b47a270cf2d8070a28f779105d853d5ada50263f50a4dd8e1a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c498f078-cca2-688d-3b12-c21c41a5bfdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traceNorm_smul_Ez_le {κ : ℝ} (hκ : 0 ≤ κ)
    (hM : (((κ : ℝ) : ℂ) • Z.Ez P T).IsHermitian) :
    traceNorm hM ≤ κ * (P.L T * theta0 A₀ H.K T) := by
  have hsum := H.hasSum_Ez
  have hS := H.summable_tail.hasSum
  refine le_trans ?_ (mul_le_mul_of_nonneg_left H.tsum_tail_le hκ)
  apply traceNorm_le_of_hasSum_vecMulVec hM
    (fun x : {ρ : Z.carrier // ρ ∉ H.sA} => κ * (Z.mult (x : Z.carrier) : ℝ))
    (fun x => by positivity)
    (fun x : {ρ : Z.carrier // ρ ∉ H.sA} => uvec P T (x : Z.carrier))
  · have := hS.mul_left κ
    simpa only [mul_assoc] using this
  · have := hsum.const_smul ((κ : ℝ) : ℂ)
    simpa only [smul_smul, Complex.ofReal_mul] using this

end TailHyp

/-! ### Proposition [prop:tail] -/

/-- **Proposition [prop:tail]** for the concrete E := G − A of Zeta23/Defs.lean.
With θ₀ := 4A₀C₁²X^{1/2}log(4T)/D₀² (= theta0 A₀ (e^{L/4}C₁) T):
(T1) every eigenvalue of Ẽ = E/L has |λᵢ(Ẽ)| ≤ θ₀ ("‖Ẽ‖ ≤ θ₀", the hypothesis shape of
RHLinalg.weyl_posIndexAbove_le); also ‖Ẽ‖₁ ≤ θ₀;
(T2) ‖Ê‖₁ ≤ θ₀/(aL) for Ê = E/(aL²) ("Moreover the trace norm satisfies ‖Ê‖₁ ≤ θ₀/(aL)";
the further "≤ 2θ₀/L" is a ≥ 1/2, Zeta23.Params.half_le_a).
Hypotheses: T ≥ T₀ (:= 300, explicit), L ≥ 2, the local count (PaperInputs.RvM.local),
[eq:hfbound] for φ (Taper), a > 0, and Hermitian-ness of Ẽ, Ê. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
