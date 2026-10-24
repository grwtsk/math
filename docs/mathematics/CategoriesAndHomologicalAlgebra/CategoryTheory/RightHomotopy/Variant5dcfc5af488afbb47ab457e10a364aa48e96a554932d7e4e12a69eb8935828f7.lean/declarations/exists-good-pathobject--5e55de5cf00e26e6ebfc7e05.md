# exists_good_pathObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71f1d77dc467ce2fbd09f433051da594d9ff57ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3c30562-fb86-567d-d9db-852ff4e8602a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21305d22-3448-1a8a-5f44-0ec15fbe1eba",
  "kind": "lemma",
  "lexical_name": "exists_good_pathObject",
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
  "slug": "exists-good-pathobject--5e55de5cf00e26e6ebfc7e05",
  "source": {
    "blob": "71f1d77dc467ce2fbd09f433051da594d9ff57ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variant5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e55de5cf00e26e6ebfc7e0597f38950652861cbb7bb992ca1ea8e481927d539",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variant5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21305d22-3448-1a8a-5f44-0ec15fbe1eba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_good_pathObject {f g : X ⟶ Y} (h : P.RightHomotopy f g) :
    ∃ (P' : PathObject Y), P'.IsGood ∧ Nonempty (P'.RightHomotopy f g) := by
  let d := MorphismProperty.factorizationData (trivialCofibrations C) (fibrations C) P.p
  exact
   ⟨{ P := d.Z
      p₀ := d.p ≫ prod.fst
      p₁ := d.p ≫ prod.snd
      ι := P.ι ≫ d.i }, ⟨by
        rw [fibration_iff]
        convert! d.hp
        aesop⟩, ⟨{ h := h.h ≫ d.i }⟩⟩

/-- The homotopy extension theorem: if `p : A ⟶ X` is a cofibration,
`l₀ : X ⟶ B` is a morphism, if there is a right homotopy `h` between
the composition `f₀ := i ≫ l₀` and a morphism `f₁ : A ⟶ B`,
then there exists a morphism `l₁ : X ⟶ B` and a right homotopy `h'` from
`l₀` to `l₁` which is compatible with `h` (in particular, `i ≫ l₁ = f₁`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variant5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variant5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f1d77dc467ce2fbd09f433051da594d9ff57ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
