# grundyValue_nim_add_nim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3728dcd-4001-e3d0-d463-c897ec54ef39",
  "kind": "theorem",
  "lexical_name": "grundyValue_nim_add_nim",
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
  "slug": "grundyvalue-nim-add-nim--137b2e98c11712eba361dbc6",
  "source": {
    "blob": "37f8d0e2699b90a3258998eafa2aa5352f183f19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 346,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137b2e98c11712eba361dbc698bcf157da5e9e8192f85dc6feeb0958ccd6e390",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3728dcd-4001-e3d0-d463-c897ec54ef39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grundyValue_nim_add_nim (x y : Ordinal) : grundyValue (nim x + nim y) = ∗x + ∗y := by
  apply (grundyValue_le_of_forall_moveLeft _).antisymm (le_grundyValue_of_Iio_subset_moveLeft _)
  · intro i
    apply leftMoves_add_cases i <;> intro j <;> have := (toLeftMovesNim_symm_lt j).ne
    · simpa [grundyValue_nim_add_nim (toLeftMovesNim.symm j) y]
    · simpa [grundyValue_nim_add_nim x (toLeftMovesNim.symm j)]
  · intro k hk
    obtain h | h := Nimber.lt_add_cases hk
    · let a := toOrdinal (k + ∗y)
      use toLeftMovesAdd (Sum.inl (toLeftMovesNim ⟨a, h⟩))
      simp [a, grundyValue_nim_add_nim a y]
    · let a := toOrdinal (k + ∗x)
      use toLeftMovesAdd (Sum.inr (toLeftMovesNim ⟨a, h⟩))
      simp [a, grundyValue_nim_add_nim x a, add_comm (∗x)]
termination_by (x, y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f8d0e2699b90a3258998eafa2aa5352f183f19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
