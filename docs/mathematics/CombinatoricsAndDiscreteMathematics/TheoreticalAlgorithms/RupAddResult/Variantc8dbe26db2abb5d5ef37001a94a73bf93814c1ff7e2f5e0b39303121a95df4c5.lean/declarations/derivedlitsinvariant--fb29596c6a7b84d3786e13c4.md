# DerivedLitsInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41ebeaaee7ffb724364c71b42d39710db3372fb15055fc723651de6310a6e75e",
  "kind": "def",
  "lexical_name": "DerivedLitsInvariant",
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
  "slug": "derivedlitsinvariant--fb29596c6a7b84d3786e13c4",
  "source": {
    "blob": "63a5c9bb7a4843b13273def96e793449214a2634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 650,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb29596c6a7b84d3786e13c4491e0f51d4a452a1ea3ebf906b027cd25d8511d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41ebeaaee7ffb724364c71b42d39710db3372fb15055fc723651de6310a6e75e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[local grind] def DerivedLitsInvariant {n : Nat} (f : DefaultFormula n)
    (fassignments_size : f.assignments.size = n) (assignments : Array Assignment)
    (assignments_size : assignments.size = n) (derivedLits : CNF.Clause (PosFin n)) :
    Prop :=
  ∀ i : Fin n,
    have i_lt_assignments_size : i.1 < assignments.size := assignments_size ▸ i.2
    have i_lt_f_assignments_size : i.1 < f.assignments.size := by
      rw [fassignments_size]
      exact i.2
    let assignments_i := assignments[i.1]'i_lt_assignments_size
    let fassignments_i := f.assignments[i.1]'i_lt_f_assignments_size
    -- Case 1: i doesn't appear in derivedLits, so assignments_i and f_assignments_i are equal
    (assignments_i = fassignments_i ∧ ∀ l ∈ derivedLits, l.1.1 ≠ i.1) ∨
    -- Case 2: (i, b) appears but (i, ¬b) doesn't so assignments_i = addAssignment
    (∃ j : Fin derivedLits.length,
      (derivedLits.get j).1.1 = i.1 ∧ assignments_i = addAssignment (derivedLits.get j).2 fassignments_i ∧
      ¬(hasAssignment (derivedLits.get j).2 fassignments_i) ∧ ∀ k : Fin derivedLits.length, k ≠ j → (derivedLits.get k).1.1 ≠ i.1) ∨
    -- Case 3: (i, true) and (i, false) both appear so assignments_i = both and fassignments_i = unassigned
    (∃ j1 : Fin derivedLits.length, ∃ j2 : Fin derivedLits.length,
      (derivedLits.get j1).1.1 = i.1 ∧ (derivedLits.get j2).1.1 = i.1 ∧ (derivedLits.get j1).2 = true ∧ (derivedLits.get j2).2 = false ∧
      assignments_i = both ∧ fassignments_i = unassigned ∧ ∀ k : Fin derivedLits.length, k ≠ j1 → k ≠ j2 → (derivedLits.get k).1.1 ≠ i.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5c9bb7a4843b13273def96e793449214a2634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
