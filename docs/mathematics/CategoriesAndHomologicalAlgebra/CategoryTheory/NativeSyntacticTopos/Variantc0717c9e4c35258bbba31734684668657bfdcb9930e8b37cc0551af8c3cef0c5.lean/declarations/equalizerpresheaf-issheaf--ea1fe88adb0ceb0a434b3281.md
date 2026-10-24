# equalizerPresheaf_isSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 466,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b5268a4-c784-d62b-c2c1-a7e4a16411e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2580b030-f371-f830-fd08-db1990798630",
  "kind": "theorem",
  "lexical_name": "equalizerPresheaf_isSheaf",
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
  "slug": "equalizerpresheaf-issheaf--ea1fe88adb0ceb0a434b3281",
  "source": {
    "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 466,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea1fe88adb0ceb0a434b3281120959beeef18058d0b6fad2477ad893e8ec0025",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2580b030-f371-f830-fd08-db1990798630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equalizerPresheaf_isSheaf {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C} {F G : Presheaf.{u, v, w} C}
    {α β : NatTrans F G}
    (hF : IsSheaf J F) (hG : IsSheaf J G) :
    IsSheaf J (equalizerPresheaf α β) := by
  intro X S hS m
  let mF : MatchingFamily F S := {
    sectionAt := fun f hf => (m.sectionAt f hf).1
    compatible := by
      intro Y Z f hf g
      exact congrArg Subtype.val (m.compatible f hf g)
  }
  rcases hF S hS mF with ⟨a, ha, uniqA⟩
  have hsepG : IsSeparated J G := isSheaf_isSeparated hG
  have eqLocal :
      ∀ {Y : C.Obj} (f : C.Hom Y X) (hf : S.arrows Y f),
        Presheaf.res G f (α.app X a) =
          Presheaf.res G f (β.app X a) := by
    intro Y f hf
    calc
      Presheaf.res G f (α.app X a)
          = α.app Y (Presheaf.res F f a) := (congrFun (α.naturality f) a).symm
      _ = α.app Y ((m.sectionAt f hf).1) := by rw [ha f hf]
      _ = β.app Y ((m.sectionAt f hf).1) := (m.sectionAt f hf).2
      _ = β.app Y (Presheaf.res F f a) := by rw [ha f hf]
      _ = Presheaf.res G f (β.app X a) := congrFun (β.naturality f) a
  have aEq : α.app X a = β.app X a :=
    hsepG S hS (α.app X a) (β.app X a) eqLocal
  refine ⟨⟨a, aEq⟩, ?_, ?_⟩
  · intro Y f hf
    apply Subtype.ext
    exact ha f hf
  · intro b hb
    apply Subtype.ext
    exact uniqA b.1 (by
      intro Y f hf
      exact congrArg Subtype.val (hb f hf))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1ba50ffb78e7492c58eec2fea7836045fb759b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
