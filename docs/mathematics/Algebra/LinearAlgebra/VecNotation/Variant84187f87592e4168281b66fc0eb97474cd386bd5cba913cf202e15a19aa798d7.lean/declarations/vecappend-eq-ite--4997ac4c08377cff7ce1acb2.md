# vecAppend_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33154f6b9f4968e0860dadda4df25c9af010df88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e74ba7a-f495-b1ac-16c8-a91b1b7e03b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:400c2031-535f-40d8-2b52-825b11ed923f",
  "kind": "theorem",
  "lexical_name": "vecAppend_eq_ite",
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
  "slug": "vecappend-eq-ite--4997ac4c08377cff7ce1acb2",
  "source": {
    "blob": "33154f6b9f4968e0860dadda4df25c9af010df88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 265,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4997ac4c08377cff7ce1acb205eeeb9618880ebe9c0f9c1939afd8409bc80a9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:400c2031-535f-40d8-2b52-825b11ed923f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vecAppend_eq_ite {α : Type*} {o : ℕ} (ho : o = m + n) (u : Fin m → α) (v : Fin n → α) :
    vecAppend ho u v = fun i : Fin o =>
      if h : (i : ℕ) < m then u ⟨i, h⟩
      else v ⟨(i : ℕ) - m, (tsub_lt_iff_left (le_of_not_lt h)).2 (ho ▸ i.2)⟩ := by
  ext i
  rw [vecAppend, Fin.append, Function.comp_apply, Fin.addCases]
  congr with hi
  simp only [eq_rec_constant]
  rfl
#align matrix.vec_append_eq_ite Matrix.vecAppend_eq_ite

-- Porting note: proof was `rfl`, so this is no longer a `dsimp`-lemma
-- Could become one again with change to `Nat.ble`:
-- https://github.com/leanprover-community/mathlib4/pull/1741/files/#r1083902351
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33154f6b9f4968e0860dadda4df25c9af010df88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
