# goldbachSymmetricCharacterIntegral_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cded1ed-533a-1099-4bfe-4fe31657b004",
  "kind": "theorem",
  "lexical_name": "goldbachSymmetricCharacterIntegral_formula",
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
  "slug": "goldbachsymmetriccharacterintegral-formula--7eb06df810f84693aff4f640",
  "source": {
    "blob": "ebce207c21c404772dc3a7f87491ee18c58fbbae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eb06df810f84693aff4f640933ca12259765f174bd2e40685d4185be94b3964",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cded1ed-533a-1099-4bfe-4fe31657b004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSymmetricCharacterIntegral_formula
    (r : ℝ) (m : ℤ) :
    goldbachSymmetricCharacterIntegral r m =
      (goldbachCharacterWindowValue r m : ℂ) := by
  by_cases hm : m = 0
  · subst m
    simp [goldbachSymmetricCharacterIntegral,
      goldbachCharacterWindowValue]
    ring
  · let c : ℝ := 2 * Real.pi * (m : ℝ)
    have hmR : (m : ℝ) ≠ 0 := by
      exact_mod_cast hm
    have hc : c ≠ 0 := by
      unfold c
      exact mul_ne_zero
        (mul_ne_zero (by norm_num) Real.pi_ne_zero) hmR
    have hfun :
        (fun β : ℝ => unitCharacter m β) =
          fun β : ℝ => Complex.exp ((c * β : ℝ) * Complex.I) := by
      funext β
      simp only [unitCharacter, fourier_coe_apply]
      congr 1
      unfold c
      push_cast
      ring
    unfold goldbachSymmetricCharacterIntegral
    rw [hfun]
    have hscale :=
      intervalIntegral.integral_comp_mul_left
        (f := fun t : ℝ => Complex.exp (t * Complex.I))
        (a := -r) (b := r) hc
    rw [hscale]
    rw [show c * -r = -(c * r) by ring]
    rw [integral_exp_mul_I_eq_sin (c * r)]
    simp only [goldbachCharacterWindowValue, if_neg hm,
      Complex.real_smul]
    norm_cast
    unfold c
    ring

/-- The set-integral definition of the symmetric singular window is the
corresponding oriented interval integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebce207c21c404772dc3a7f87491ee18c58fbbae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
