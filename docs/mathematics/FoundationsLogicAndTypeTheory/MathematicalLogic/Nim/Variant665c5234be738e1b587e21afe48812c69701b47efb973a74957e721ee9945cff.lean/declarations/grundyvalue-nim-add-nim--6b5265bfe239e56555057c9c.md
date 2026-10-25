# grundyValue_nim_add_nim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be706da18dd7faf237cc3a16e4fa0bf3f87b1373",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b8bca86-b48c-d724-cc0e-e0d50c607534",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c70bbd7f-bb50-118d-c186-76c6d9620e4c",
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
  "slug": "grundyvalue-nim-add-nim--6b5265bfe239e56555057c9c",
  "source": {
    "blob": "be706da18dd7faf237cc3a16e4fa0bf3f87b1373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 338,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b5265bfe239e56555057c9c5ff79e3fb9495b32bfabc17a7cfa6a0f15cf5afc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c70bbd7f-bb50-118d-c186-76c6d9620e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–353.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be706da18dd7faf237cc3a16e4fa0bf3f87b1373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
