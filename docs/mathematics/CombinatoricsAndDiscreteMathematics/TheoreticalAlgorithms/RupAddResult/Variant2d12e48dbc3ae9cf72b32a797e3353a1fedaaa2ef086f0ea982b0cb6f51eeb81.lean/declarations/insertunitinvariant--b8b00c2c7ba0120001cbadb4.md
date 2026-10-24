# InsertUnitInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6ebd1426cc115241d4d266e22177839e8ed1967d93aa66f6e61a268d0f4199c",
  "kind": "def",
  "lexical_name": "InsertUnitInvariant",
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
  "slug": "insertunitinvariant--b8b00c2c7ba0120001cbadb4",
  "source": {
    "blob": "fe8acc5a5be5740e022569f4427ed8c3582f9bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8b00c2c7ba0120001cbadb4a3cc031a135095ffbf0427a1dc2872836da8e495",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6ebd1426cc115241d4d266e22177839e8ed1967d93aa66f6e61a268d0f4199c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InsertUnitInvariant {n : Nat} (original_assignments : Array Assignment)
    (original_assignments_size : original_assignments.size = n) (units : Array (Literal (PosFin n)))
    (assignments : Array Assignment) (assignments_size : assignments.size = n) :
    Prop := ∀ i : Fin n,
  let assignments_i := assignments[i.1]'(by rw [assignments_size]; exact i.2)
  let original_assignments_i := original_assignments[i.1]'(by rw [original_assignments_size] ; exact i.2)
  -- Case 1: i doesn't appear in units, so assignments_i and fassignments_i are equal
  (assignments_i = original_assignments_i ∧ ∀ j : Fin units.size, units[j].1.1 ≠ i.1) ∨
  -- Case 2: (i, b) appears but (i, ¬b) doesn't so assignments_i = addAssignment b fassignments_i
  (∃ j : Fin units.size, ∃ b : Bool, ∃ i_gt_zero : i.1 > 0,
    units[j] = ⟨⟨i.1, ⟨i_gt_zero, i.2⟩⟩, b⟩ ∧ assignments_i = addAssignment b original_assignments_i ∧
    ¬(hasAssignment b original_assignments_i) ∧ ∀ k : Fin units.size, k ≠ j → units[k].1.1 ≠ i.1) ∨
  -- Case 3: (i, true) and (i, false) both appear so assignments_i = both and fassignments_i = unassigned
  (∃ j1 : Fin units.size, ∃ j2 : Fin units.size, ∃ i_gt_zero : i.1 > 0,
    units[j1] = ⟨⟨i.1, ⟨i_gt_zero, i.2⟩⟩, true⟩ ∧ units[j2] = ⟨⟨i.1, ⟨i_gt_zero, i.2⟩⟩, false⟩ ∧
    assignments_i = both ∧ original_assignments_i = unassigned ∧ ∀ k : Fin units.size, k ≠ j1 → k ≠ j2 → units[k].1.1 ≠ i.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8acc5a5be5740e022569f4427ed8c3582f9bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
