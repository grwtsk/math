# span_eq_top_of_linearIndependent_of_card_eq_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9bd4711528e02e48be1c10bb6d7a39467adff0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52fb408a-39cf-af3c-1af2-76d2f8a0b293",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40b173e6-f285-5813-9863-69bf8a80b7d9",
  "kind": "theorem",
  "lexical_name": "span_eq_top_of_linearIndependent_of_card_eq_finrank",
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
  "slug": "span-eq-top-of-linearindependent-of-card-eq-finrank--01e898837c52a0a409e4ffab",
  "source": {
    "blob": "a9bd4711528e02e48be1c10bb6d7a39467adff0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1203,
    "line": 1181,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01e898837c52a0a409e4ffabfa598d4286fbc49612a02210ce50507bd1b5eaa5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40b173e6-f285-5813-9863-69bf8a80b7d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1181–1203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_eq_top_of_linearIndependent_of_card_eq_finrank {ι : Type*} [hι : Nonempty ι]
    [Fintype ι] {b : ι → V} (lin_ind : LinearIndependent K b)
    (card_eq : Fintype.card ι = finrank K V) : span K (Set.range b) = ⊤ := by
  by_cases fin : FiniteDimensional K V
  · -- Porting note: fails without this line
    -- This will presumably be fixed by the changes discussed at
    -- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/!4.232894/near/342121059
    replace fin : FiniteDimensional _ _ := fin
    by_contra ne_top
    have lt_top : span K (Set.range b) < ⊤ := lt_of_le_of_ne le_top ne_top
    exact ne_of_lt (Submodule.finrank_lt lt_top)
      (_root_.trans (finrank_span_eq_card lin_ind) card_eq)
  · exfalso
    apply ne_of_lt (Fintype.card_pos_iff.mpr hι)
    symm
    replace fin := (not_iff_not.2 IsNoetherian.iff_fg).2 fin
    calc
      Fintype.card ι = finrank K V := card_eq
      _ = 0 := dif_neg (mt IsNoetherian.iff_rank_lt_aleph0.mpr fin)
#align span_eq_top_of_linear_independent_of_card_eq_finrank span_eq_top_of_linearIndependent_of_card_eq_finrank

/-- A linear independent family of `finrank K V` vectors forms a basis. -/
@[simps! repr_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean#L1181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bd4711528e02e48be1c10bb6d7a39467adff0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
