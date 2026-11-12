# WSD-v1-01: cosine_defect_bounds

Declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.ShiftDefectScalar.cosine_defect_bounds
Maintained file: ../WeilShiftDefectScalar.lean
Candidate Git blob: 438681653c3cbd75a37b9936f3a3cb4fe50ff1be
Source attribution: grwtsk contributors; 2026-11-12.
MSC2020 primary 42A38.

Literal declaration:
~~~lean
theorem cosine_defect_bounds (x : ℝ) :
    0 ≤ x ^ 2 - 2 * (1 - Real.cos x) ∧
      x ^ 2 - 2 * (1 - Real.cos x) ≤ x ^ 4 / 12
~~~

Primary proof: 1-x²/2<=cos x proves nonnegativity. Use
cos x=1-2sin(x/2)² and factor the difference exactly as
4*(x/2-sin(x/2))*(x/2+sin(x/2)). Global inequalities
|y-sin y|<=|y|³/6 and |sin y|<=|y| give the upper bound
x⁴/12, including negative x. Nothing is assumed about x
being small. The coefficient is asymptotically sharp at zero
by the fourth Taylor coefficient; its sharpness limit is not
a new Lean declaration.

Exact upstream mathlib inputs at
d13f23b723b8a846827a245b89c10fc7d3f11612:
Mathlib/Analysis/SpecialFunctions/Trigonometric/Bounds.lean
Real.one_sub_sq_div_two_le_cos, Real.abs_sub_sin_le,
Real.abs_sin_le_abs, plus Real.cos_two_mul and
Real.sin_sq_add_cos_sq. Classical inequalities, not a
novelty claim or paper adaptation.

Consumer: WeilH1SourceContinuity.md II--III, as a
Fourier-multiplier supplier for the ACTUAL H² shift
variance and original gamma form. Its Plancherel
integration and H¹ source return are not proved by this
scalar declaration. The signed arithmetic lower bound
and RH/primitive GRH remain open.

SOURCE_PROOF_CANDIDATE. No sorry, admit or new research
axiom intentionally used. Elaboration, full dependency
build, fresh kernel replay, transitive axiom audit,
independent analytical review and numerical certification
NOT_RUN. Novelty UNASSESSED.
