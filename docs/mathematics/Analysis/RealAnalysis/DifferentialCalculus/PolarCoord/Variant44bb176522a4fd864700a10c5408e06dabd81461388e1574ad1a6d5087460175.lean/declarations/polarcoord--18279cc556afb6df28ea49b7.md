# polarCoord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eab6df794ff62a648f03fa1485e8aa57a9223b61c2b35976c2533ac4db2a102f",
  "kind": "def",
  "lexical_name": "polarCoord",
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
  "slug": "polarcoord--18279cc556afb6df28ea49b7",
  "source": {
    "blob": "4624b5c0fc2cb6451033621cc750ca3b463a5fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18279cc556afb6df28ea49b7527335593111f4ef63e7a2857c362c81038d9e1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eab6df794ff62a648f03fa1485e8aa57a9223b61c2b35976c2533ac4db2a102f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def polarCoord : LocalHomeomorph (ℝ × ℝ) (ℝ × ℝ) where
  toFun q := (Real.sqrt (q.1 ^ 2 + q.2 ^ 2), Complex.arg (Complex.equivRealProd.symm q))
  invFun p := (p.1 * cos p.2, p.1 * sin p.2)
  source := {q | 0 < q.1} ∪ {q | q.2 ≠ 0}
  target := Ioi (0 : ℝ) ×ˢ Ioo (-π) π
  map_target' := by
    rintro ⟨r, θ⟩ ⟨hr, hθ⟩
    dsimp at hr hθ
    rcases eq_or_ne θ 0 with (rfl | h'θ)
    · simpa using hr
    · right
      simp at hr
      simpa only [ne_of_gt hr, Ne.def, mem_setOf_eq, mul_eq_zero, false_or_iff,
        sin_eq_zero_iff_of_lt_of_lt hθ.1 hθ.2] using h'θ
  map_source' := by
    rintro ⟨x, y⟩ hxy
    simp only [prod_mk_mem_set_prod_eq, mem_Ioi, sqrt_pos, mem_Ioo, Complex.neg_pi_lt_arg,
      true_and_iff, Complex.arg_lt_pi_iff]
    constructor
    · cases' hxy with hxy hxy
      · dsimp at hxy; linarith [sq_pos_of_ne_zero _ hxy.ne', sq_nonneg y]
      · linarith [sq_nonneg x, sq_pos_of_ne_zero _ hxy]
    · cases' hxy with hxy hxy
      · exact Or.inl (le_of_lt hxy)
      · exact Or.inr hxy
  right_inv' := by
    rintro ⟨r, θ⟩ ⟨hr, hθ⟩
    dsimp at hr hθ
    simp only [Prod.mk.inj_iff]
    constructor
    · conv_rhs => rw [← sqrt_sq (le_of_lt hr), ← one_mul (r ^ 2), ← sin_sq_add_cos_sq θ]
      congr 1
      ring
    · convert Complex.arg_mul_cos_add_sin_mul_I hr ⟨hθ.1, hθ.2.le⟩
      simp only [Complex.equivRealProd_symm_apply, Complex.ofReal_mul, Complex.ofReal_cos,
        Complex.ofReal_sin]
      ring
  left_inv' := by
    rintro ⟨x, y⟩ _
    have A : sqrt (x ^ 2 + y ^ 2) = Complex.abs (x + y * Complex.I) := by
      simp [Complex.abs_def, Complex.normSq, pow_two, MonoidWithZeroHom.coe_mk, Complex.add_re,
        Complex.ofReal_re, Complex.mul_re, Complex.I_re, mul_zero, Complex.ofReal_im,
        Complex.I_im, sub_self, add_zero, Complex.add_im, Complex.mul_im, mul_one, zero_add]
    have Z := Complex.abs_mul_cos_add_sin_mul_I (x + y * Complex.I)
    simp only [← Complex.ofReal_cos, ← Complex.ofReal_sin, mul_add, ← Complex.ofReal_mul, ←
      mul_assoc] at Z
    simpa [A, -Complex.ofReal_cos, -Complex.ofReal_sin] using Complex.ext_iff.1 Z
  open_target := isOpen_Ioi.prod isOpen_Ioo
  open_source :=
    (isOpen_lt continuous_const continuous_fst).union
      (isOpen_ne_fun continuous_snd continuous_const)
  continuous_invFun :=
    ((continuous_fst.mul (continuous_cos.comp continuous_snd)).prod_mk
        (continuous_fst.mul (continuous_sin.comp continuous_snd))).continuousOn
  continuous_toFun := by
    apply ((continuous_fst.pow 2).add (continuous_snd.pow 2)).sqrt.continuousOn.prod
    have A : MapsTo Complex.equivRealProd.symm ({q : ℝ × ℝ | 0 < q.1} ∪ {q : ℝ × ℝ | q.2 ≠ 0})
        {z | 0 < z.re ∨ z.im ≠ 0} := by
      rintro ⟨x, y⟩ hxy; simpa only using hxy
    refine' ContinuousOn.comp (f := Complex.equivRealProd.symm)
      (g := Complex.arg) (fun z hz => _) _ A
    · exact (Complex.continuousAt_arg hz).continuousWithinAt
    · exact Complex.equivRealProdClm.symm.continuous.continuousOn
#align polar_coord polarCoord

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4624b5c0fc2cb6451033621cc750ca3b463a5fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
