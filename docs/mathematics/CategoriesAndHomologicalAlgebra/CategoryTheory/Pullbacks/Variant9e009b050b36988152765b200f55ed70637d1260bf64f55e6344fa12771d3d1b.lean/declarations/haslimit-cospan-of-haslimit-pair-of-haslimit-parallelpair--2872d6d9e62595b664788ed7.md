# hasLimit_cospan_of_hasLimit_pair_of_hasLimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03c4746ab95bd309ed3fe74ec2c6587a4f4a4a6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d31b8288-5751-d459-8151-e4b831df3185",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf1b1575-a5f4-e8ba-9f02-f69852a03512",
  "kind": "theorem",
  "lexical_name": "hasLimit_cospan_of_hasLimit_pair_of_hasLimit_parallelPair",
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
  "slug": "haslimit-cospan-of-haslimit-pair-of-haslimit-parallelpair--2872d6d9e62595b664788ed7",
  "source": {
    "blob": "03c4746ab95bd309ed3fe74ec2c6587a4f4a4a6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 26,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2872d6d9e62595b664788ed7bf5e08415d22da9d87992c7f49458b0004329a6b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf1b1575-a5f4-e8ba-9f02-f69852a03512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasLimit_cospan_of_hasLimit_pair_of_hasLimit_parallelPair {C : Type u} [𝒞 : Category.{v} C]
    {X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z) [HasLimit (pair X Y)]
    [HasLimit (parallelPair (prod.fst ≫ f) (prod.snd ≫ g))] : HasLimit (cospan f g) :=
  let π₁ : X ⨯ Y ⟶ X := prod.fst
  let π₂ : X ⨯ Y ⟶ Y := prod.snd
  let e := equalizer.ι (π₁ ≫ f) (π₂ ≫ g)
  HasLimit.mk
    { cone :=
        PullbackCone.mk (e ≫ π₁) (e ≫ π₂) <| by
          rw [Category.assoc, equalizer.condition]
          simp [e]
      isLimit :=
        PullbackCone.IsLimit.mk _ (fun s => equalizer.lift
          (prod.lift (s.π.app WalkingCospan.left) (s.π.app WalkingCospan.right)) <| by
            rw [← Category.assoc, limit.lift_π, ← Category.assoc, limit.lift_π]
            exact PullbackCone.condition _)
          (by simp [π₁, e]) (by simp [π₂, e]) fun s m h₁ h₂ => by
          ext
          · dsimp; simpa using h₁
          · simpa using h₂ }

section

attribute [local instance] hasLimit_cospan_of_hasLimit_pair_of_hasLimit_parallelPair

/-- If a category has all binary products and all equalizers, then it also has all pullbacks.
    As usual, this is not an instance, since there may be a more direct way to construct
    pullbacks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c4746ab95bd309ed3fe74ec2c6587a4f4a4a6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
