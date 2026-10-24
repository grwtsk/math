# Quot.desc_quotQuotUliftEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d96c2c66ad4284bd80fdd3ba94db73b6a7b34feb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1da49385-18f9-2b53-bd5f-67df1c94c27f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7e70d6b-9664-af37-73bc-a8ac7da54a18",
  "kind": "lemma",
  "lexical_name": "Quot.desc_quotQuotUliftEquiv",
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
  "slug": "quot-desc-quotquotuliftequiv--9d78137821709e84ce18c66a",
  "source": {
    "blob": "d96c2c66ad4284bd80fdd3ba94db73b6a7b34feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d78137821709e84ce18c66ad42168f8dfa646655e70e9661e5c2666fa126374",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7e70d6b-9664-af37-73bc-a8ac7da54a18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Quot.desc_quotQuotUliftEquiv {F : J ⥤ Type u} (c : Cocone F) :
    Quot.desc (uliftFunctor.{u'}.mapCocone c) ∘ quotQuotUliftEquiv F = ULift.up ∘ Quot.desc c := by
  ext x
  obtain ⟨_, _, rfl⟩ := Quot.jointly_surjective x
  dsimp

/-- (implementation detail) A function `Quot F → α` induces a cocone on `F` as long as the universes
    work out. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d96c2c66ad4284bd80fdd3ba94db73b6a7b34feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
