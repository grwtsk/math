# induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f9bd01e4b71f70bf980cf892b41df99004eb632",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa863d96095628d632ea636277e633d25b4f55cf2cb8c4a63e76f0153e804a54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7238231-7d56-337e-494f-435393906bc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:681b8949-88f4-1f47-8991-9e233b89a36b",
  "kind": "lemma",
  "lexical_name": "induction'",
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
  "slug": "induction--f07d2d6e774187907e2ceeff",
  "source": {
    "blob": "3f9bd01e4b71f70bf980cf892b41df99004eb632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa863d96095628d632ea636277e633d25b4f55cf2cb8c4a63e76f0153e804a54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f07d2d6e774187907e2ceeffe1a9aca770d6c673c2e997393fff564df9ac2c35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa863d96095628d632ea636277e633d25b4f55cf2cb8c4a63e76f0153e804a54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:681b8949-88f4-1f47-8991-9e233b89a36b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction' (P : ∀ {a b : Paths V}, (a ⟶ b) → Prop)
    (id : ∀ {v : V}, P (𝟙 ((of V).obj v)))
    (comp : ∀ {u v w : V} (p : u ⟶ v)
      (q : (of V).obj v ⟶ (of V).obj w), P q → P ((of V).map p ≫ q)) :
    ∀ {a b : Paths V} (f : a ⟶ b), P f := by
  intro a b
  revert a
  exact induction_fixed_target (P := fun f ↦ P f) id (fun _ _ ↦ comp _ _)

attribute [local ext (iff := false)] Functor.ext

set_option backward.isDefEq.respectTransparency false in
/-- Any prefunctor from `V` lifts to a functor from `paths V` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa863d96095628d632ea636277e633d25b4f55cf2cb8c4a63e76f0153e804a54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa863d96095628d632ea636277e633d25b4f55cf2cb8c4a63e76f0153e804a54.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f9bd01e4b71f70bf980cf892b41df99004eb632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
