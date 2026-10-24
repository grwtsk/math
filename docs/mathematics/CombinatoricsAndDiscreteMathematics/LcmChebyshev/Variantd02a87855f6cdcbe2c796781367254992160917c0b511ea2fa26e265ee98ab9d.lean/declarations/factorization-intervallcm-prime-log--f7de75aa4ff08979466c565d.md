# factorization_intervalLcm_prime_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e0c115e-3739-9eb7-9710-d4ff91eda772",
  "kind": "theorem",
  "lexical_name": "factorization_intervalLcm_prime_log",
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
  "slug": "factorization-intervallcm-prime-log--f7de75aa4ff08979466c565d",
  "source": {
    "blob": "720201abbda1a13d36bb2cdd7d12fc84d40e37c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7de75aa4ff08979466c565d761fd133c12a03a756e4e88930368f01f61dcd42",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e0c115e-3739-9eb7-9710-d4ff91eda772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_intervalLcm_prime_log
    (N : Nat) {p : Nat}
    (hp : Nat.Prime p) :
    Nat.factorization (intervalLcm N) p = Nat.log p N := by
  rw [factorization_intervalLcm_eq_max]
  have hp1 := hp.one_lt
  refine le_antisymm ?_ ?_
  · simp only [Finset.sup_le_iff, Finset.mem_Icc, and_imp]
    intro m hm1 hmN
    exact
      Nat.le_log_of_pow_le hp1
        ((Nat.le_of_dvd (by omega) (Nat.ordProj_dvd m p)).trans hmN)
  · rcases le_or_gt p N with hpN | hpN
    · have hpow := Nat.pow_log_le_self p (x := N) (by omega)
      have hmem : p ^ Nat.log p N ∈ Finset.Icc 1 N := by
        exact
          Finset.mem_Icc.mpr
            ⟨Nat.succ_le_iff.mpr (pow_pos hp.pos _), hpow⟩
      have hle :=
        Finset.le_sup
          (s := Finset.Icc 1 N)
          (f := fun n => Nat.factorization n p)
          hmem
      have hfac :
          Nat.factorization (p ^ Nat.log p N) p = Nat.log p N := by
        simp [Nat.factorization_pow, hp]
      rwa [hfac] at hle
    · simp [Nat.log_of_lt hpN]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `720201abbda1a13d36bb2cdd7d12fc84d40e37c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
