# mumu_core_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1166eda0c9f917460939fab9809839d538c53e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:893d8a56-cb28-4684-2e5d-daca44465fbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:992f01cc-b49f-9ad8-fb47-1a9eb8d540e2",
  "kind": "theorem",
  "lexical_name": "mumu_core_chi",
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
  "slug": "mumu-core-chi--af1596a07fdf1259d3e46ea0",
  "source": {
    "blob": "f1166eda0c9f917460939fab9809839d538c53e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 150,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af1596a07fdf1259d3e46ea0eb837875b8bc16a8a7684ceacdf0080498e5e798",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:992f01cc-b49f-9ad8-fb47-1a9eb8d540e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mumu_core_chi (hΓq : GammaFactsChi κ q) (hF : LocalHypsCore cϱ p F) (hT2 : 2 ≤ p.T)
    {A : ℝ} (hA0 : 0 ≤ A)
    (hμl : ∀ τ ∈ Icc p.T (2 * p.T), |muq κ q τ| ≤ A)
    {K : ℝ} (hK0 : 0 ≤ K)
    (hKinc : ∀ t : ℝ, 2 ≤ t → ∀ r : ℝ,
      |muq κ q (t + r) - muq κ q t| ≤ K * (|r| + r ^ 2) / t) :
    |Mform F.Phi p.T (muq κ q) (muq κ q)
        - 2 * π * F.b * p.L * ∫ τ in p.T..(2 * p.T), muq κ q τ ^ 2|
      ≤ (A ^ 2 + A * K) * (∫ x, F.Phi x ^ 2 * |x|)
        + A * K * ∫ x, F.Phi x ^ 2 * x ^ 2 := by
  have hμc : Continuous (muq κ q) := hΓq.smooth.continuous
  have hΦc : Continuous F.Phi := hF.Phi_contDiff.continuous
  have hGc : Continuous fun qq : ℝ × ℝ => muq κ q qq.1 * muq κ q qq.2 := by fun_prop
  set c : ℝ := ∫ τ' in Icc p.T (2 * p.T), muq κ q τ' ^ 2 with hc
  have hc' : ∫ τ in p.T..(2 * p.T), muq κ q τ ^ 2 = c := by
    rw [intervalIntegral.integral_of_le (by linarith), hc, integral_Icc_eq_integral_Ioc]
  have hshear : Mform F.Phi p.T (muq κ q) (muq κ q)
      = ∫ x, F.Phi x ^ 2 * ∫ τ' in Ix p.T x, muq κ q (x + τ') * muq κ q τ' := by
    unfold Mform
    simp only [mul_assoc]
    exact sqIntegral_shear hΦc hGc
  have hfInt : Integrable (fun x => F.Phi x ^ 2 * ∫ τ' in Ix p.T x,
      muq κ q (x + τ') * muq κ q τ') := integrable_sq_mul_inner hΦc hGc
  have hgInt : Integrable (fun x => F.Phi x ^ 2 * c) := hF.Phi_sq_integrable.mul_const c
  have hmain : 2 * π * F.b * p.L * c = ∫ x, F.Phi x ^ 2 * c := by
    rw [integral_mul_const c (fun x => F.Phi x ^ 2), hF.Phi_sq_integral]
  rw [hc', hshear, hmain, ← integral_sub hfInt hgInt]
  have hpt : ∀ x : ℝ, |F.Phi x ^ 2 * (∫ τ' in Ix p.T x, muq κ q (x + τ') * muq κ q τ')
      - F.Phi x ^ 2 * c|
      ≤ (A ^ 2 + A * K) * (F.Phi x ^ 2 * |x|) + A * K * (F.Phi x ^ 2 * x ^ 2) := by
    intro x
    rw [← mul_sub, abs_mul, abs_of_nonneg (sq_nonneg (F.Phi x))]
    have hinner := abs_inner_sub_le_chi hΓq hT2 hA0 hμl hK0 hKinc x
    rw [← hc] at hinner
    calc F.Phi x ^ 2 * |(∫ τ' in Ix p.T x, muq κ q (x + τ') * muq κ q τ') - c|
        ≤ F.Phi x ^ 2 * ((A ^ 2 + A * K) * |x| + A * K * x ^ 2) := by
          gcongr
      _ = (A ^ 2 + A * K) * (F.Phi x ^ 2 * |x|) + A * K * (F.Phi x ^ 2 * x ^ 2) := by ring
  calc |∫ x, (F.Phi x ^ 2 * (∫ τ' in Ix p.T x, muq κ q (x + τ') * muq κ q τ')
        - F.Phi x ^ 2 * c)|
      ≤ ∫ x, |F.Phi x ^ 2 * (∫ τ' in Ix p.T x, muq κ q (x + τ') * muq κ q τ')
        - F.Phi x ^ 2 * c| := by
        rw [← Real.norm_eq_abs]
        refine (norm_integral_le_integral_norm _).trans (le_of_eq ?_)
        simp_rw [Real.norm_eq_abs]
    _ ≤ ∫ x, ((A ^ 2 + A * K) * (F.Phi x ^ 2 * |x|) + A * K * (F.Phi x ^ 2 * x ^ 2)) :=
        integral_mono (hfInt.sub hgInt).abs
          ((hF.Phi_sq_mul_abs_integrable.const_mul _).add
            (hF.Phi_sq_mul_sq_integrable.const_mul _)) hpt
    _ = (A ^ 2 + A * K) * (∫ x, F.Phi x ^ 2 * |x|)
        + A * K * ∫ x, F.Phi x ^ 2 * x ^ 2 := by
        rw [integral_add (hF.Phi_sq_mul_abs_integrable.const_mul _)
          (hF.Phi_sq_mul_sq_integrable.const_mul _),
          integral_const_mul, integral_const_mul]

end Core

variable (cϱ lam : ℝ)

set_option linter.unusedVariables false in
set_option maxHeartbeats 1000000 in
/-- [prop:mumu]_chi: the diagonal mu_chi evaluation with O_q(l^2 log L) error; proof of the
statement recorded in Zeta23/ThmE/PrimeSideChi.lean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1166eda0c9f917460939fab9809839d538c53e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
