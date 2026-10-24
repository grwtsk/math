# primeCharacterPartialSum_eq_inverseAbel_add_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a8a8d625eff525d6585c85b29c7deca3ef045f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1996d8ed-48fc-1456-8a5a-b3dbd1337028",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f86540be-c662-a92e-0d97-d9a63a0a2a5c",
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
  "slug": "primecharacterpartialsum-eq-inverseabel-add-two--223937be18ecd7ad42463cd9",
  "source": {
    "blob": "3a8a8d625eff525d6585c85b29c7deca3ef045f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:223937be18ecd7ad42463cd9103f4ae30489bfeceb6ae0f0456440d833d91eb5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f86540be-c662-a92e-0d97-d9a63a0a2a5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–134.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a8a8d625eff525d6585c85b29c7deca3ef045f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
