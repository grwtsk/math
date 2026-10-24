# weakEquivalence_iff

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
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0221d381-0573-7171-9e45-d33e591538be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2806d8d8-e309-d5a6-fd63-50f2c95efae8",
  "kind": "lemma",
  "lexical_name": "weakEquivalence_iff",
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
  "slug": "weakequivalence-iff--209e6800eb07322da51b5924",
  "source": {
    "blob": "71f1d77dc467ce2fbd09f433051da594d9ff57ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variant5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:209e6800eb07322da51b5924a8b1e200a51c85016eb5756fb1d598a1c97f47d5",
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

Occurrence: `result:2806d8d8-e309-d5a6-fd63-50f2c95efae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weakEquivalence_iff [(weakEquivalences C).HasTwoOutOfThreeProperty]
    [(weakEquivalences C).ContainsIdentities]
    {f₀ f₁ : X ⟶ Y} (h : P.RightHomotopy f₀ f₁) :
    WeakEquivalence f₀ ↔ WeakEquivalence f₁ := by
  induction h
  grind [weakEquivalence_postcomp_iff]

end

section

variable [ModelCategory C] {P : PathObject Y}

/-- If `f₀ : X ⟶ Y` is homotopic to `f₁` relative to a path object `P`,
and `f₁` is homotopic to `f₂` relative to a good path object `P'`,
then `f₀` is homotopic to `f₂` relative to the path object `P.trans P'`
when `Y` is fibrant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variant5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variant5dcfc5af488afbb47ab457e10a364aa48e96a554932d7e4e12a69eb8935828f7.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f1d77dc467ce2fbd09f433051da594d9ff57ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
