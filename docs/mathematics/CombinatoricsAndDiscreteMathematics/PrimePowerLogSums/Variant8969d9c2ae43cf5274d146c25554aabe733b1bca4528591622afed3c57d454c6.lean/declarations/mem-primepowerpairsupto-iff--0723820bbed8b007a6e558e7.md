# mem_primePowerPairsUpTo_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b297f9f-96f6-1c98-e7c7-a0d555f27ac0",
  "kind": "theorem",
  "lexical_name": "mem_primePowerPairsUpTo_iff",
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
  "slug": "mem-primepowerpairsupto-iff--0723820bbed8b007a6e558e7",
  "source": {
    "blob": "552ab05a139521988263e750638c51b8fb26a2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0723820bbed8b007a6e558e708fce12e91030e85af935ce4849991225dc0c7f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b297f9f-96f6-1c98-e7c7-a0d555f27ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_primePowerPairsUpTo_iff
    {N p k : Nat} :
    (p, k) ∈ primePowerPairsUpTo N ↔
      Nat.Prime p ∧ 1 ≤ k ∧ p ^ k ≤ N := by
  constructor
  · intro h
    unfold primePowerPairsUpTo at h
    rcases Finset.mem_biUnion.mp h with ⟨q, hq, hpq⟩
    rcases Finset.mem_map.mp hpq with ⟨j, hj, hpair⟩
    have hp_eq : p = q := (Prod.ext_iff.mp hpair).1.symm
    have hk_eq : k = j := (Prod.ext_iff.mp hpair).2.symm
    subst p
    subst k
    have hmem := Finset.mem_Icc.mp hj
    exact
      ⟨ primesUpTo_prime hq
      , hmem.1
      , Nat.pow_le_of_le_log
          (by
            have hNpos : 0 < N := lt_of_lt_of_le (primesUpTo_pos hq) (mem_primesUpTo_iff.mp hq).2
            exact hNpos.ne')
          hmem.2
      ⟩
  · intro h
    rcases h with ⟨hp, hk1, hpow⟩
    have hpN : p ≤ N := by
      have hpdvd : p ∣ p ^ k := dvd_pow_self p (by omega)
      exact (Nat.le_of_dvd (pow_pos hp.pos k) hpdvd).trans hpow
    have hpS : p ∈ primesUpTo N :=
      mem_primesUpTo_iff.mpr ⟨hp, hpN⟩
    unfold primePowerPairsUpTo
    refine Finset.mem_biUnion.mpr ⟨p, hpS, ?_⟩
    refine Finset.mem_map.mpr ⟨k, Finset.mem_Icc.mpr ⟨hk1, ?_⟩, rfl⟩
    exact Nat.le_log_of_pow_le hp.one_lt hpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `552ab05a139521988263e750638c51b8fb26a2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
