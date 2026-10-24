# paper_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57c0ea4a-f369-8294-75a3-b88fcbd26c5f",
  "kind": "theorem",
  "lexical_name": "paper_inversion",
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
  "slug": "paper-inversion--2bafae5558c4559842f325aa",
  "source": {
    "blob": "b11805266fa0912a0a3fc34dcca5b5413e43294b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bafae5558c4559842f325aa4d30fbf87f34eef6d5cadf3adf5891724d493e08",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57c0ea4a-f369-8294-75a3-b88fcbd26c5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paper_inversion {k : ℝ → ℂ} (hk : Continuous k) (hki : Integrable k)
    (hFk : Integrable (𝓕 k)) (u : ℝ) :
    k u = (1 / (2 * π) : ℂ) * ∫ r : ℝ, paperFT k r * cexp (-I * r * u) := by
  have hinv := congrFun (hk.fourierInv_fourier_eq hki hFk) u
  rw [← hinv, Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul]
  have key : (fun r : ℝ => paperFT k r * cexp (-I * r * u))
      = fun r => (fun v : ℝ => 𝓕 k v * cexp (2 * π * I * v * u)) ((-(1 / (2 * π))) * r) := by
    ext r
    rw [paperFT_ofReal_eq_fourier, show -(1 / (2 * π)) * r = -r / (2 * π) by ring]
    congr 1
    push_cast
    field_simp
  rw [key, Measure.integral_comp_mul_left (fun v : ℝ => 𝓕 k v * cexp (2 * π * I * v * u))]
  have habs : |(-(1 / (2 * π)) : ℝ)⁻¹| = 2 * π := by
    rw [inv_neg, abs_neg, one_div, inv_inv, abs_of_pos (by positivity)]
  rw [habs, Complex.real_smul, ← mul_assoc]
  have h2π : (1 / (2 * π) : ℂ) * ((2 * π : ℝ) : ℂ) = 1 := by
    push_cast; field_simp
  rw [h2π, one_mul]
  congr 1; ext v
  rw [smul_eq_mul, mul_comm]
  congr 2
  push_cast; ring

/-! ## The test function k = f ⋆ g̃ -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11805266fa0912a0a3fc34dcca5b5413e43294b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
