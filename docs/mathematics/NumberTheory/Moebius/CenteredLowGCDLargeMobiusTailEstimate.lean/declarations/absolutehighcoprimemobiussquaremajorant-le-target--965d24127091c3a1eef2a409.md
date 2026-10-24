# absoluteHighCoprimeMobiusSquareMajorant_le_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a03afb23-4992-fa6c-6c06-95bad94b9bcc",
  "kind": "theorem",
  "lexical_name": "absoluteHighCoprimeMobiusSquareMajorant_le_target",
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
  "slug": "absolutehighcoprimemobiussquaremajorant-le-target--965d24127091c3a1eef2a409",
  "source": {
    "blob": "797b24c722c661d7ee3f8a2f0de91c7618db5331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 294,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965d24127091c3a1eef2a4099092577048d22aef620398f6bb0b68237a360d45",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a03afb23-4992-fa6c-6c06-95bad94b9bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absoluteHighCoprimeMobiusSquareMajorant_le_target
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    absoluteHighCoprimeMobiusSquareMajorant X w ≤
      1152 * centeredLowGCDTargetScale X := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  let ell : ℝ := Real.log (X : ℝ)
  have hXone : 1 ≤ X := by omega
  have hXposR : 0 < (X : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hXone)
  have hellOne : 1 ≤ ell := by
    unfold ell
    rw [Real.le_log_iff_exp_le hXposR]
    exact (Real.exp_one_lt_three.le.trans <| by
      exact_mod_cast (show 3 ≤ X by omega))
  have hellNonneg : 0 ≤ ell := zero_le_one.trans hellOne
  have hlogFour_le : Real.log (4 : ℝ) ≤ ell := by
    unfold ell
    exact Real.log_le_log (by norm_num) (by exact_mod_cast hX)
  have hL_eq : L = Real.log (4 : ℝ) + ell := by
    unfold L ell
    rw [show (((4 * X : ℕ) : ℝ)) =
        (4 : ℝ) * (X : ℝ) by norm_num,
      Real.log_mul (by norm_num : (4 : ℝ) ≠ 0) hXposR.ne']
  have hL_le : L ≤ 2 * ell := by linarith
  have honeL_le : 1 + L ≤ 3 * ell := by linarith
  have hLnonneg : 0 ≤ L := by
    unfold L
    exact Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  have hmass := highMobiusQuotientSquareMass_le hXone
  have henergy :=
    absoluteHighCoprimeMobiusSquareMajorant_le_quotientMass
      hX hw
  have hlogs :
      (1 + L)^2 * L^2 ≤ 36 * ell^4 := by
    have h1sq :
        (1 + L)^2 ≤ (3 * ell)^2 := by
      exact mul_self_le_mul_self (by linarith) honeL_le
    have hLsq :
        L^2 ≤ (2 * ell)^2 := by
      exact mul_self_le_mul_self hLnonneg hL_le
    calc
      (1 + L)^2 * L^2 ≤
          (3 * ell)^2 * (2 * ell)^2 := by
        exact mul_le_mul h1sq hLsq (sq_nonneg _) (sq_nonneg _)
      _ = 36 * ell^4 := by ring
  calc
    absoluteHighCoprimeMobiusSquareMajorant X w ≤
      highMobiusQuotientSquareMass X * (1 + L)^2 * L^2 := by
      simpa [L] using henergy
    _ ≤ (32 * (X : ℝ) * Real.sqrt (X : ℝ)) *
        ((1 + L)^2 * L^2) := by
      exact mul_le_mul_of_nonneg_right hmass (by positivity)
    _ ≤ (32 * (X : ℝ) * Real.sqrt (X : ℝ)) *
        (36 * ell^4) := by
      exact mul_le_mul_of_nonneg_left hlogs (by positivity)
    _ = 1152 * centeredLowGCDTargetScale X := by
      unfold centeredLowGCDTargetScale ell
      ring

/-- Signed large-index coprime square bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `797b24c722c661d7ee3f8a2f0de91c7618db5331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
