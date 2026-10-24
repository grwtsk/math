# exists_right_complement'_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf5902e5-529e-8fd7-8663-bb022d026f8e",
  "kind": "theorem",
  "lexical_name": "exists_right_complement'_of_coprime",
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
  "slug": "exists-right-complement-of-coprime--c660032158470996901efc84",
  "source": {
    "blob": "e3d76d5379263a76b6040b4707be7cd4d58e9b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 279,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c660032158470996901efc848ecbf64f9a7f39d355ed63f78e0ac0e6c375930f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf5902e5-529e-8fd7-8663-bb022d026f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_right_complement'_of_coprime {N : Subgroup G} [N.Normal]
    (hN : Nat.Coprime (Nat.card N) N.index) : ∃ H : Subgroup G, IsComplement' N H := by
  by_cases hN1 : Nat.card N = 0
  · rw [hN1, Nat.coprime_zero_left, index_eq_one] at hN
    rw [hN]
    exact ⟨⊥, isComplement'_top_bot⟩
  by_cases hN2 : N.index = 0
  · rw [hN2, Nat.coprime_zero_right] at hN
    haveI := (Cardinal.toNat_eq_one_iff_unique.mp hN).1
    rw [N.eq_bot_of_subsingleton]
    exact ⟨⊤, isComplement'_bot_top⟩
  have hN3 : Nat.card G ≠ 0 := by
    rw [← N.card_mul_index]
    exact mul_ne_zero hN1 hN2
  haveI := (Cardinal.lt_aleph0_iff_fintype.mp
    (lt_of_not_ge (mt Cardinal.toNat_apply_of_aleph0_le hN3))).some
  exact exists_right_complement'_of_coprime_aux' rfl hN

/-- **Schur-Zassenhaus** for normal subgroups:
  If `H : Subgroup G` is normal, and has order coprime to its index, then there exists a
  subgroup `K` which is a (left) complement of `H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3d76d5379263a76b6040b4707be7cd4d58e9b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
