# zeta_eq_reflectedUnit_mul_sin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3421344d-3054-8372-eaba-45772c6fb32f",
  "kind": "theorem",
  "lexical_name": "zeta_eq_reflectedUnit_mul_sin",
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
  "slug": "zeta-eq-reflectedunit-mul-sin--5f509d53952bb08141fae898",
  "source": {
    "blob": "0d0ae16ad76a367d769d0e02da355333870407e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f509d53952bb08141fae8989f0a0a2162afd31348c32ded650a6a3b1bc1a15b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3421344d-3054-8372-eaba-45772c6fb32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_eq_reflectedUnit_mul_sin {s : ℂ} (hs : s.re < 0) :
    riemannZeta s = reflectedUnit s * Complex.sin ((Real.pi : ℂ) * s / 2) := by
  have hneg : ∀ k : ℕ, 1 - s ≠ -(k : ℂ) := by
    intro k he
    have hr := congrArg Complex.re he
    have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    simp only [Complex.sub_re, Complex.one_re, Complex.neg_re, Complex.natCast_re] at hr
    linarith
  have hne : 1 - s ≠ (1 : ℂ) := by
    intro he
    have hr := congrArg Complex.re he
    simp only [Complex.sub_re, Complex.one_re] at hr
    linarith
  have hb : 2 * (Real.pi : ℂ) ≠ 0 :=
    mul_ne_zero (by norm_num) (Complex.ofReal_ne_zero.mpr Real.pi_ne_zero)
  have he := riemannZeta_one_sub hneg hne
  rw [sub_sub_cancel, Complex.cpow_def_of_ne_zero hb] at he
  have hcos : Complex.cos ((Real.pi : ℂ) * (1 - s) / 2) =
      Complex.sin ((Real.pi : ℂ) * s / 2) := by
    rw [show (Real.pi : ℂ) * (1 - s) / 2 =
      (Real.pi : ℂ) / 2 - (Real.pi : ℂ) * s / 2 by ring,
      Complex.cos_pi_div_two_sub]
  rw [hcos, show -(1 - s) = s - 1 by ring] at he
  simpa only [reflectedUnit, mul_assoc, mul_comm, mul_left_comm] using he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0ae16ad76a367d769d0e02da355333870407e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
