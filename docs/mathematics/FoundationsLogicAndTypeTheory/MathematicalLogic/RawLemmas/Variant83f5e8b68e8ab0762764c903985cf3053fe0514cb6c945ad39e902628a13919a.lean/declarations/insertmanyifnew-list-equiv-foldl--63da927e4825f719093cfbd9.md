# insertManyIfNew_list_equiv_foldl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08770e3fc86bdd2d8c54065158d2f1039fe085a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d6f8c6f-cd79-9d86-5303-91a055486549",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff72b916-ed29-b9fc-a07d-230f676a41aa",
  "kind": "theorem",
  "lexical_name": "insertManyIfNew_list_equiv_foldl",
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
  "slug": "insertmanyifnew-list-equiv-foldl--63da927e4825f719093cfbd9",
  "source": {
    "blob": "08770e3fc86bdd2d8c54065158d2f1039fe085a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4322,
    "line": 4314,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63da927e4825f719093cfbd923b4e9d1101478eddc6d23aeb40819a5fff7ff71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff72b916-ed29-b9fc-a07d-230f676a41aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4314–4322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertManyIfNew_list_equiv_foldl [BEq α] [Hashable α] {l : List ((a : α) × β a)} :
    (m₁.insertManyIfNew l).1 ~m (l.foldl (init := m₁) (fun acc p => acc.insertIfNew p.1 p.2)) := by
  rw [insertManyIfNew_list_eq_foldl, ← List.foldl_hom (g₂ := fun acc p => acc.insertIfNew p.1 p.2) Subtype.val]
  · simp_to_model [Equiv] using List.Perm.refl
  · intro x y
    simp [Raw.insertIfNew, x.property]

namespace Const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean#L4314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08770e3fc86bdd2d8c54065158d2f1039fe085a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
