# exists_forall_lie_eq_smul_of_isSolvable_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab56d15e-1271-0ecc-abfc-16a6badb01b9",
  "kind": "lemma",
  "lexical_name": "exists_forall_lie_eq_smul_of_isSolvable_of_finite",
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
  "slug": "exists-forall-lie-eq-smul-of-issolvable-of-finite--53259d7f351c49e8a7507d75",
  "source": {
    "blob": "4ba513aa4cf1fef3433c9ff88010b3886aa84f45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variant59aff3e45dd1a41028bd4a0555ff271a02ebb0aacdfcb72bbae860fe439c8689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53259d7f351c49e8a7507d75c95b0b77f3cfd29ff29f4d002faf4ae5f5d7f641",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LieTheorem/Variant59aff3e45dd1a41028bd4a0555ff271a02ebb0aacdfcb72bbae860fe439c8689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab56d15e-1271-0ecc-abfc-16a6badb01b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_forall_lie_eq_smul_of_isSolvable_of_finite
    (L : Type*) [LieRing L] [LieAlgebra k L] [LieRingModule L V] [LieModule k L V]
    [IsSolvable L] [LieModule.IsTriangularizable k L V] [Module.Finite k L] :
    ∃ χ : Module.Dual k L, Nontrivial (weightSpace V χ) := by
  obtain H | ⟨A, hA, hAL⟩ := eq_top_or_exists_le_coatom (derivedSeries k L 1).toSubmodule
  · obtain _ | _ := subsingleton_or_nontrivial L
    · use 0
      simpa [trivial_lie_zero, mem_weightSpace, nontrivial_iff] using exists_pair_ne V
    · rw [LieSubmodule.toSubmodule_eq_top] at H
      exact ((derivedSeries_lt_top_of_solvable k L).ne H).elim
  lift A to LieIdeal k L
  · intros
    exact hAL <| LieSubmodule.lie_mem_lie (LieSubmodule.mem_top _) (LieSubmodule.mem_top _)
  obtain ⟨χ', _⟩ := exists_forall_lie_eq_smul_of_isSolvable_of_finite A
  exact exists_nontrivial_weightSpace_of_lieIdeal A hA χ'
termination_by Module.finrank k L
decreasing_by
  rw [← finrank_top k L]
  apply Submodule.finrank_lt_finrank_of_lt
  exact hA.lt_top

attribute [local instance 100] LieRing.ofAssociativeRing

/-- **Lie's theorem**: Lie modules of solvable Lie algebras over fields of characteristic 0
have a common eigenvector for the action of all elements of the Lie algebra.

See `LieModule.exists_nontrivial_weightSpace_of_isNilpotent` for the variant that
assumes that `L` is nilpotent and drops the condition that `k` is of characteristic zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LieTheorem/Variant59aff3e45dd1a41028bd4a0555ff271a02ebb0aacdfcb72bbae860fe439c8689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variant59aff3e45dd1a41028bd4a0555ff271a02ebb0aacdfcb72bbae860fe439c8689.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ba513aa4cf1fef3433c9ff88010b3886aa84f45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
