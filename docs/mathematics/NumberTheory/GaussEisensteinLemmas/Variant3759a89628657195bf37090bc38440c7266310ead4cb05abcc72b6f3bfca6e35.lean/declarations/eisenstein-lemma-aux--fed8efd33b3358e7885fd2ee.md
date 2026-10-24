# eisenstein_lemma_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b81073b3-2313-e6e5-bdd6-96a819e3ff32",
  "kind": "theorem",
  "lexical_name": "eisenstein_lemma_aux₁",
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
  "slug": "eisenstein-lemma-aux--fed8efd33b3358e7885fd2ee",
  "source": {
    "blob": "de1c9e93a464938136b41363748e9ce5bcc87415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 113,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variant3759a89628657195bf37090bc38440c7266310ead4cb05abcc72b6f3bfca6e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fed8efd33b3358e7885fd2eeba151ec71570b6a87208cd1be6f4cc8b9c08c006",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variant3759a89628657195bf37090bc38440c7266310ead4cb05abcc72b6f3bfca6e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b81073b3-2313-e6e5-bdd6-96a819e3ff32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eisenstein_lemma_aux₁ (p : ℕ) [Fact p.Prime] [hp2 : Fact (p % 2 = 1)] {a : ℕ}
    (hap : (a : ZMod p) ≠ 0) :
    ((∑ x ∈ Ico 1 (p / 2).succ, a * x : ℕ) : ZMod 2) =
      #{x ∈ Ico 1 (p / 2).succ | p / 2 < (a * x.cast : ZMod p).val} +
        ∑ x ∈ Ico 1 (p / 2).succ, x + (∑ x ∈ Ico 1 (p / 2).succ, a * x / p : ℕ) :=
  have hp2 : (p : ZMod 2) = (1 : ℕ) := (natCast_eq_natCast_iff _ _ _).2 hp2.1
  calc
    ((∑ x ∈ Ico 1 (p / 2).succ, a * x : ℕ) : ZMod 2) =
        ((∑ x ∈ Ico 1 (p / 2).succ, (a * x % p + p * (a * x / p)) : ℕ) : ZMod 2) := by
      simp only [mod_add_div]
    _ = (∑ x ∈ Ico 1 (p / 2).succ, ((a * x : ℕ) : ZMod p).val : ℕ) +
        (∑ x ∈ Ico 1 (p / 2).succ, a * x / p : ℕ) := by
      simp only [val_natCast]
      simp [sum_add_distrib, ← mul_sum, Nat.cast_add, Nat.cast_mul, Nat.cast_sum, hp2]
    _ = _ :=
      congr_arg (· + _) <|
        calc
          ((∑ x ∈ Ico 1 (p / 2).succ, ((a * x : ℕ) : ZMod p).val : ℕ) : ZMod 2) =
              ∑ x ∈ Ico 1 (p / 2).succ, (((a * x : ZMod p).valMinAbs +
                if (a * x : ZMod p).val ≤ p / 2 then 0 else p : ℤ) : ZMod 2) := by
            simp only [(val_eq_ite_valMinAbs _).symm]; simp [Nat.cast_sum]
          _ = #{x ∈ Ico 1 (p / 2).succ | p / 2 < (a * x.cast : ZMod p).val} +
              (∑ x ∈ Ico 1 (p / 2).succ, (a * x.cast : ZMod p).valMinAbs.natAbs : ℕ) := by
            simp [add_comm, sum_add_distrib, Finset.sum_ite, hp2, Nat.cast_sum]
          _ = _ := by
            rw [Finset.sum_eq_multiset_sum, Ico_map_valMinAbs_natAbs_eq_Ico_map_id p a hap, ←
              Finset.sum_eq_multiset_sum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variant3759a89628657195bf37090bc38440c7266310ead4cb05abcc72b6f3bfca6e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variant3759a89628657195bf37090bc38440c7266310ead4cb05abcc72b6f3bfca6e35.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1c9e93a464938136b41363748e9ce5bcc87415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
