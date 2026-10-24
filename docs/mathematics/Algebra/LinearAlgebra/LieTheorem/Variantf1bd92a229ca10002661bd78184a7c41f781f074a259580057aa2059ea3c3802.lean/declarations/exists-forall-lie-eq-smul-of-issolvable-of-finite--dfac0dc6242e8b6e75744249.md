# exists_forall_lie_eq_smul_of_isSolvable_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2030d84dd03ff8f9819fd69a07153a9071f471d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1bd92a229ca10002661bd78184a7c41f781f074a259580057aa2059ea3c3802.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b36eabb8-ca99-b39f-a1e5-c6744a644e22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8210600e-d4e3-a607-ebd2-e0ff7e3a40c9",
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
  "slug": "exists-forall-lie-eq-smul-of-issolvable-of-finite--dfac0dc6242e8b6e75744249",
  "source": {
    "blob": "2030d84dd03ff8f9819fd69a07153a9071f471d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 212,
    "path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variantf1bd92a229ca10002661bd78184a7c41f781f074a259580057aa2059ea3c3802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfac0dc6242e8b6e75744249bac93c7fbd41011382c1821c8783b7d68dd709d3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LieTheorem/Variantf1bd92a229ca10002661bd78184a7c41f781f074a259580057aa2059ea3c3802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8210600e-d4e3-a607-ebd2-e0ff7e3a40c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–239.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LieTheorem/Variantf1bd92a229ca10002661bd78184a7c41f781f074a259580057aa2059ea3c3802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variantf1bd92a229ca10002661bd78184a7c41f781f074a259580057aa2059ea3c3802.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2030d84dd03ff8f9819fd69a07153a9071f471d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
