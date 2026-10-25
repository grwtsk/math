# IsDetpBalanced.submatrix_of_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08c53f1e8099795eb4464912bce05c1c3bf6157f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:267434d9-c5d6-c5e4-9fbf-289b369f247c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1b04a37-d4d9-7bc8-b3b3-2f341a181fec",
  "kind": "lemma",
  "lexical_name": "IsDetpBalanced.submatrix_of_card_le",
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
  "slug": "isdetpbalanced-submatrix-of-card-le--1e8bff2af75a9a0848edf25b",
  "source": {
    "blob": "08c53f1e8099795eb4464912bce05c1c3bf6157f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e8bff2af75a9a0848edf25b5367be1d918258ea9ddb1c9f6bb1268a1fb94457",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1b04a37-d4d9-7bc8-b3b3-2f341a181fec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDetpBalanced.submatrix_of_card_le {a b : R} (h : A.IsDetpBalanced a b)
    (le : Fintype.card n ≤ Fintype.card m) (f g : m → n) :
    (A.submatrix f g).IsDetpBalanced a b := by
  by_cases hf : f.Injective; swap
  · obtain ⟨p, q, eq, ne⟩ := Function.not_injective_iff.mp hf
    exact .of_eq (detp_eq_of_row_eq ne <| by ext; simp [eq])
  by_cases hg : g.Injective; swap
  · obtain ⟨p, q, eq, ne⟩ := Function.not_injective_iff.mp hg
    exact .of_eq (detp_eq_of_col_eq ne <| by ext; simp [eq])
  let f' := Equiv.ofBijective f <| (Fintype.bijective_iff_injective_and_card _).mpr
    ⟨hf, (Fintype.card_le_of_injective f hf).antisymm le⟩
  let g' := Equiv.ofBijective g <| (Fintype.bijective_iff_injective_and_card _).mpr
    ⟨hg, (Fintype.card_le_of_injective g hg).antisymm le⟩
  rwa [show f = f' by rfl, show g = g' by rfl, isDetpBalanced_submatrix_equiv_iff]

variable (A)

/-- The adjugate matrix, but only the terms of a given sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08c53f1e8099795eb4464912bce05c1c3bf6157f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
