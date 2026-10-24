# induction_fixed_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b530deff283762ef6cca417f1b6be76d626506a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42bde037-7151-cc94-ed02-4f6cbe4c56df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cd8e962-b139-4214-e70c-94f0d9193b30",
  "kind": "lemma",
  "lexical_name": "induction_fixed_source",
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
  "slug": "induction-fixed-source--29253ac76d65a39f084d164c",
  "source": {
    "blob": "2b530deff283762ef6cca417f1b6be76d626506a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29253ac76d65a39f084d164c9c51d839f9932e3570bac49b3fec1a2e038ce476",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cd8e962-b139-4214-e70c-94f0d9193b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction_fixed_source {a : Paths V} (P : ∀ {b : Paths V}, (a ⟶ b) → Prop)
    (id : P (𝟙 a))
    (comp : ∀ {u v : V} (p : a ⟶ (of V).obj u) (q : u ⟶ v), P p → P (p ≫ (of V).map q)) :
    ∀ {b : Paths V} (f : a ⟶ b), P f := by
  intro _ f
  induction f with
  | nil => exact id
  | cons _ w h => exact comp _ w h

/-- To prove a property on morphisms of a path category with given target `b`, it suffices to prove
it for the identity and prove that the property is preserved under composition on the left
with length 1 paths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b530deff283762ef6cca417f1b6be76d626506a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
