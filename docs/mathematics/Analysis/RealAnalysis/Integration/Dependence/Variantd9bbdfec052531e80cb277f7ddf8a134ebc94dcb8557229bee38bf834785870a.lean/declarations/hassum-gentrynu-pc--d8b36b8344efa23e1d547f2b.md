# hasSum_gentryNu_Pc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca853a4c-8133-35a0-897c-a9a3a2353217",
  "kind": "theorem",
  "lexical_name": "hasSum_gentryNu_Pc",
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
  "slug": "hassum-gentrynu-pc--d8b36b8344efa23e1d547f2b",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8b36b8344efa23e1d547f2b5ae32ec0eeace1e0ec7505167fd748286411d4f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca853a4c-8133-35a0-897c-a9a3a2353217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_gentryNu_Pc (hF : LocalHypsCore cϱ p Fn) {g : ℕ → ℂ} {e : ℕ → ℕ → ℂ} {δ : ℝ}
    (k l : ℤ)
    (h : ∀ N ∈ Finset.Ioc 0 ⌊p.X⌋₊, HasSum (fun r : ℕ => e (r + 1) N * (δ : ℂ) ^ (r + 1)) (g N)) :
    HasSum (fun r : ℕ => δ ^ (r + 1) * GentryNu (Pc p.X (e (r + 1))) p Fn k l)
      (GentryNu (Pc p.X g) p Fn k l) := by
  rw [gentryNu_Pc_eq_sum hF]
  have hN : ∀ N ∈ Finset.Ioc 0 ⌊p.X⌋₊, HasSum
      (fun r : ℕ => (e (r + 1) N * (δ : ℂ) ^ (r + 1)).re * Jc p Fn k l N
        + (e (r + 1) N * (δ : ℂ) ^ (r + 1)).im * Js p Fn k l N)
      ((g N).re * Jc p Fn k l N + (g N).im * Js p Fn k l N) := by
    intro N hN
    have hre := (Complex.reCLM.hasSum (h N hN)).mul_right (Jc p Fn k l N)
    have him := (Complex.imCLM.hasSum (h N hN)).mul_right (Js p Fn k l N)
    simp only [Complex.reCLM_apply, Complex.imCLM_apply] at hre him
    exact hre.add him
  have := hasSum_sum hN
  convert this using 1
  funext r
  rw [gentryNu_Pc_eq_sum hF, Finset.mul_sum]
  refine Finset.sum_congr rfl fun N _ => ?_
  rw [← Complex.ofReal_pow, Complex.re_mul_ofReal, Complex.im_mul_ofReal]
  ring

/-! ### B. The Dirichlet kernel for every K, and Abel summation with complex summands -/

/-- A_φ(y)·‖Σ_{k<K} e^{−iτ_k y}‖ ≤ L²/(2 log 2) for every K (proof = ThmE.Aphi_mul_norm_tauKernel_le with
p.d ↦ K; that lemma's geometric-sum input abs_sin_mul_norm_geom_le is already K-general). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
