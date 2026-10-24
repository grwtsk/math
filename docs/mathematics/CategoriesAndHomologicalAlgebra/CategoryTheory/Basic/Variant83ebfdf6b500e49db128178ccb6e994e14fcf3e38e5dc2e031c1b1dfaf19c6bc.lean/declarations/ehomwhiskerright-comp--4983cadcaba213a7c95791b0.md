# eHomWhiskerRight_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d27482658e78bace93149a59bb9f41bde7df4774",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1c85699-8dbc-8690-2635-519ed25fb50f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9be6ee2-7724-9006-79f5-9d7338c7b312",
  "kind": "lemma",
  "lexical_name": "eHomWhiskerRight_comp",
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
  "slug": "ehomwhiskerright-comp--4983cadcaba213a7c95791b0",
  "source": {
    "blob": "d27482658e78bace93149a59bb9f41bde7df4774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4983cadcaba213a7c95791b0bfbbebb9c236d82abc1bd773059eb934ed0b71a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9be6ee2-7724-9006-79f5-9d7338c7b312`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHomWhiskerRight_comp {X X' X'' : C} (f : X ⟶ X') (f' : X' ⟶ X'') (Y : C) :
    eHomWhiskerRight V (f ≫ f') Y = eHomWhiskerRight V f' Y ≫ eHomWhiskerRight V f Y := by
  dsimp [eHomWhiskerRight]
  rw [assoc, assoc, eHomEquiv_comp, comp_whiskerRight_assoc, comp_whiskerRight_assoc, ← e_assoc',
    tensorHom_def', comp_whiskerRight_assoc, id_whiskerLeft, comp_whiskerRight_assoc,
    ← comp_whiskerRight_assoc, Iso.inv_hom_id, id_whiskerRight_assoc,
    comp_whiskerRight_assoc, leftUnitor_inv_whiskerRight_assoc,
    ← associator_inv_naturality_left_assoc, Iso.inv_hom_id_assoc,
    ← whisker_exchange_assoc, id_whiskerLeft_assoc, Iso.inv_hom_id_assoc]

/-- Whiskering commutes with the enriched composition. -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d27482658e78bace93149a59bb9f41bde7df4774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
