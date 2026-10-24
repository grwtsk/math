# pairTentMass_eq_squareTentMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:713dac9c-fce9-9d79-9c87-387c88171c23",
  "kind": "theorem",
  "lexical_name": "pairTentMass_eq_squareTentMangoldt",
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
  "slug": "pairtentmass-eq-squaretentmangoldt--34524e404a56df4ef6ef63e4",
  "source": {
    "blob": "fe19f7cbc7a45ba8cf9e7cba403ed6e9970cc334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 176,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34524e404a56df4ef6ef63e4e3554e3b4627bb91f1df4bb4bf26c20a6ee94335",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:713dac9c-fce9-9d79-9c87-387c88171c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairTentMass_eq_squareTentMangoldt (n : ℕ) :
    pairTentMass n = squareTentMangoldt n := by
  classical
  unfold pairTentMass squareTentMangoldt
  calc
    (∑ kp ∈ primePowerPairs n,
        Real.log kp.2 * squareWeight n (kp.2 ^ kp.1)) =
      ∑ m ∈ (Finset.Ioc (n ^ 2) ((n + 1) ^ 2)).filter IsPrimePow,
        ArithmeticFunction.vonMangoldt m * squareWeight n m := by
      refine Finset.sum_bij (i := fun kp _ => kp.2 ^ kp.1) ?_ ?_ ?_ ?_
      · rintro ⟨k, p⟩ hkp
        have h := (mem_primePowerPairs_iff n k p).mp hkp
        exact Finset.mem_filter.mpr
          ⟨Finset.mem_Ioc.mpr h.2.2, h.2.1.isPrimePow.pow h.1.ne'⟩
      · rintro ⟨k, p⟩ hkp ⟨l, q⟩ hlq heq
        have hp := (mem_primePowerPairs_iff n k p).mp hkp
        have hq := (mem_primePowerPairs_iff n l q).mp hlq
        have hb : p = q := by
          have hm := congrArg Nat.minFac heq
          simpa only [hp.2.1.pow_minFac hp.1.ne',
            hq.2.1.pow_minFac hq.1.ne'] using hm
        subst q
        have he : k = l := Nat.pow_right_injective hp.2.1.two_le heq
        exact Prod.ext he rfl
      · intro m hm
        have h := Finset.mem_filter.mp hm
        obtain ⟨p, k, hp, hk, rfl⟩ := (isPrimePow_nat_iff m).mp h.2
        exact ⟨(k, p), (mem_primePowerPairs_iff n k p).mpr
          ⟨hk, hp, (Finset.mem_Ioc.mp h.1).1,
            (Finset.mem_Ioc.mp h.1).2⟩, rfl⟩
      · rintro ⟨k, p⟩ hkp
        have h := (mem_primePowerPairs_iff n k p).mp hkp
        rw [ArithmeticFunction.vonMangoldt_apply_pow h.1.ne',
          ArithmeticFunction.vonMangoldt_apply_prime h.2.1]
    _ = ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2),
        ArithmeticFunction.vonMangoldt m * squareWeight n m := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro m hm hnot
      have hnpp : ¬ IsPrimePow m := by
        intro hp
        exact hnot (Finset.mem_filter.mpr ⟨hm, hp⟩)
      rw [ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hnpp, zero_mul]

/-- Fintype form of the same weighted pair mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe19f7cbc7a45ba8cf9e7cba403ed6e9970cc334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
