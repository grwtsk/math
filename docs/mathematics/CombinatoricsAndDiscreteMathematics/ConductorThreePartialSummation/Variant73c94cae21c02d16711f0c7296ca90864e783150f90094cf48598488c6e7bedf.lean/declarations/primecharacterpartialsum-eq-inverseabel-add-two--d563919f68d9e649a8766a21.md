# primeCharacterPartialSum_eq_inverseAbel_add_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:427377dc-23ba-648f-60a1-a306fadf4c53",
  "kind": "theorem",
  "lexical_name": "primeCharacterPartialSum_eq_inverseAbel_add_two",
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
  "slug": "primecharacterpartialsum-eq-inverseabel-add-two--d563919f68d9e649a8766a21",
  "source": {
    "blob": "94d91b71cb8f8629b7d2c653691b3762377aab2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d563919f68d9e649a8766a21c4eb91df6689a8abe9a8d072d7cc3061848da904",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:427377dc-23ba-648f-60a1-a306fadf4c53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primeCharacterPartialSum_eq_inverseAbel_add_two (k : ℕ) :
    primeCharacterPartialSum (2 + k) =
      conductorThreeTheta (2 + k) * reciprocalLog (2 + k) +
        ∑ n ∈ Finset.Ico 2 (2 + k),
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1)) := by
  induction k with
  | zero =>
      have hA2 : primeCharacterPartialSum 2 = -1 := by
        rw [show 2 = 1 + 1 by omega, primeCharacterPartialSum_succ]
        norm_num [primeCharacterPartialSum, conductorThreePrimeCharacterSum,
          primeCharacterCoefficient, conductorThreeIntegerValue_mod_two]
      have hT2 : conductorThreeTheta 2 = -Real.log 2 := by
        rw [show 2 = 1 + 1 by omega, conductorThreeTheta_succ]
        norm_num [conductorThreeTheta, primeCharacterCoefficient,
          conductorThreeIntegerValue_mod_two]
      have hlog : Real.log (2 : ℝ) ≠ 0 :=
        ne_of_gt (Real.log_pos (by norm_num))
      rw [hA2, hT2]
      simp [reciprocalLog, hlog]
  | succ k ih =>
      have hN : 2 ≤ 2 + k := by omega
      rw [show 2 + (k + 1) = (2 + k) + 1 by omega,
        primeCharacterPartialSum_succ, conductorThreeTheta_succ,
        Finset.sum_Ico_succ_top hN, ih]
      have hlog : Real.log (((2 + k) + 1 : ℕ) : ℝ) ≠ 0 := by
        exact ne_of_gt (Real.log_pos (by
          exact_mod_cast (show 1 < (2 + k) + 1 by omega)))
      have hcurr : Real.log (2 + (k : ℝ) + 1) ≠ 0 := by
        simpa only [Nat.cast_add, Nat.cast_ofNat, Nat.cast_one] using hlog
      have hprev : Real.log (2 + (k : ℝ)) ≠ 0 := by
        exact ne_of_gt (Real.log_pos (by
          exact_mod_cast (show 1 < 2 + k by omega)))
      unfold reciprocalLog
      norm_num [Nat.cast_add, Nat.cast_one] at ⊢
      field_simp [hcurr, hprev]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94d91b71cb8f8629b7d2c653691b3762377aab2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
