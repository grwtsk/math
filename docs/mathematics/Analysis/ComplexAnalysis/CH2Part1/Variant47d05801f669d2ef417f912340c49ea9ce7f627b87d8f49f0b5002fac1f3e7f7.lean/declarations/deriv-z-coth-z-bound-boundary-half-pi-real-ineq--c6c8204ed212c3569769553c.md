# deriv_z_coth_z_bound_boundary_half_pi_real_ineq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c21f06a-864b-eae2-4651-f0e79eebadd7",
  "kind": "lemma",
  "lexical_name": "deriv_z_coth_z_bound_boundary_half_pi_real_ineq",
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
  "slug": "deriv-z-coth-z-bound-boundary-half-pi-real-ineq--c6c8204ed212c3569769553c",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5999,
    "line": 5961,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6c8204ed212c3569769553c52379c47782b2885ba732a333ce1f970a62f93f8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c21f06a-864b-eae2-4651-f0e79eebadd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5961–5999.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma deriv_z_coth_z_bound_boundary_half_pi_real_ineq (x : ℝ) :
    (x + Real.sinh x * Real.cosh x) ^ 2 + (π / 2) ^ 2 ≤ (x ^ 2 + (π / 2) ^ 2) * Real.cosh x ^ 4 := by
  let a := (π / 2) ^ 2
  have h_even : ∀ x, (x + Real.sinh x * Real.cosh x) ^ 2 + a = ((-x) + Real.sinh (-x) * Real.cosh (-x)) ^ 2 + a := by
    intro x; simp; ring
  have h_even_rhs : ∀ x, (x ^ 2 + a) * Real.cosh x ^ 4 = ((-x) ^ 2 + a) * Real.cosh (-x) ^ 4 := by
    intro x; simp
  suffices ∀ {x : ℝ}, 0 ≤ x → (x + Real.sinh x * Real.cosh x) ^ 2 + a ≤ (x ^ 2 + a) * Real.cosh x ^ 4 by
    rcases abs_cases x with ⟨hx, hx_abs⟩ | ⟨hx, hx_abs⟩
    · exact this hx_abs
    · rw [h_even x, h_even_rhs x]
      exact this (by linarith)
  intro x hx
  have h_cosh_sq : Real.cosh x ^ 2 = 1 + Real.sinh x ^ 2 := by rw [Real.cosh_sq]; ring
  have h_cosh_pow_4 : Real.cosh x ^ 4 = 1 + 2 * Real.sinh x ^ 2 + Real.sinh x ^ 4 := by
    rw [show Real.cosh x ^ 4 = (Real.cosh x ^ 2) ^ 2 by ring, h_cosh_sq]; ring
  have h_lhs : (x + Real.sinh x * Real.cosh x) ^ 2 + a = x ^ 2 + 2 * x * Real.sinh x * Real.cosh x + Real.sinh x ^ 2 * Real.cosh x ^ 2 + a := by ring
  have h_rhs : (x ^ 2 + a) * Real.cosh x ^ 4 = x ^ 2 + 2 * x ^ 2 * Real.sinh x ^ 2 + x ^ 2 * Real.sinh x ^ 4 + a + 2 * a * Real.sinh x ^ 2 + a * Real.sinh x ^ 4 := by
    rw [h_cosh_pow_4]; ring
  have ha2 : 2 ≤ a := by
    unfold a; nlinarith [Real.pi_gt_three]
  have ha3 : 3 ≤ 2 * a := by linarith
  rw [h_lhs, h_rhs, Real.cosh_sq]; ring_nf
  calc
    x * Real.sinh x * Real.cosh x * 2 + x ^ 2 + Real.sinh x ^ 2 + Real.sinh x ^ 4 + a
      ≤ x * Real.sinh x * (1 + Real.sinh x ^ 2 / 2) * 2 + x ^ 2 + Real.sinh x ^ 2 + Real.sinh x ^ 4 + a := by
        gcongr
        nlinarith [sq_nonneg (Real.cosh x - 1), h_cosh_sq]
    _ = (2 * x * Real.sinh x + x * Real.sinh x ^ 3) + x ^ 2 + Real.sinh x ^ 2 + Real.sinh x ^ 4 + a := by ring
    _ ≤ (2 * Real.sinh x * Real.sinh x + Real.sinh x * Real.sinh x ^ 3) + x ^ 2 + Real.sinh x ^ 2 + Real.sinh x ^ 4 + a := by
        gcongr <;> exact Real.self_le_sinh_iff.mpr hx
    _ = 3 * Real.sinh x ^ 2 + 2 * Real.sinh x ^ 4 + x ^ 2 + a := by ring
    _ ≤ (2 * a) * Real.sinh x ^ 2 + a * Real.sinh x ^ 4 + x ^ 2 + a := by gcongr
    _ ≤ (2 * x ^ 2 + 2 * a) * Real.sinh x ^ 2 + (x ^ 2 + a) * Real.sinh x ^ 4 + x ^ 2 + a := by
        gcongr
        · nlinarith [hx]
        · nlinarith [hx]
    _ = x ^ 2 + x ^ 2 * Real.sinh x ^ 2 * 2 + x ^ 2 * Real.sinh x ^ 4 + Real.sinh x ^ 2 * a * 2 + Real.sinh x ^ 4 * a + a := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L5961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
