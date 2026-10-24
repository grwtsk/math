# congr_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b00de7f533d59a6e1c752a7e58f2445827b350d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cb99d9c-74d4-c3ed-8c1d-4126a3f0e1e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6b5b070-bf32-85c5-72d8-956edaa1d988",
  "kind": "theorem",
  "lexical_name": "congr_reverse",
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
  "slug": "congr-reverse--57bacae290630c402939d270",
  "source": {
    "blob": "b00de7f533d59a6e1c752a7e58f2445827b350d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57bacae290630c402939d2709476c23bd81d6f6d2e95caf8a70770bf81260d69",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b5b070-bf32-85c5-72d8-956edaa1d988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem congr_reverse {X Y : Paths <| Quiver.Symmetrify V} (p q : X ⟶ Y) :
    Quotient.CompClosure redStep p q → Quotient.CompClosure redStep p.reverse q.reverse := by
  rintro ⟨XW, pp, qq, WY, _, Z, f⟩
  have : Quotient.CompClosure redStep (WY.reverse ≫ 𝟙 _ ≫ XW.reverse)
      (WY.reverse ≫ (f.toPath ≫ (Quiver.reverse f).toPath) ≫ XW.reverse) := by
    constructor
    constructor
  simpa only [CategoryStruct.comp, CategoryStruct.id, Quiver.Path.reverse, Quiver.Path.nil_comp,
    Quiver.Path.reverse_comp, Quiver.reverse_reverse, Quiver.Path.reverse_toPath,
    Quiver.Path.comp_assoc] using this

open Relation in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00de7f533d59a6e1c752a7e58f2445827b350d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
