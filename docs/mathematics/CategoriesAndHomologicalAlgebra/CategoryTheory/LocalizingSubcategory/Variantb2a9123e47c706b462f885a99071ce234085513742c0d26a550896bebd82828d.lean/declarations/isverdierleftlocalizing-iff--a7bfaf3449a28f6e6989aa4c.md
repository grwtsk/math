# isVerdierLeftLocalizing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8743f5f0-738c-4032-f015-3b78f16bc379",
  "kind": "lemma",
  "lexical_name": "isVerdierLeftLocalizing_iff",
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
  "slug": "isverdierleftlocalizing-iff--a7bfaf3449a28f6e6989aa4c",
  "source": {
    "blob": "626359baa1e11324946a20302994317d2befe4e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7bfaf3449a28f6e6989aa4c491bfc99c31adac47e8f456dce2278f566162f98",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8743f5f0-738c-4032-f015-3b78f16bc379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isVerdierLeftLocalizing_iff [A.IsTriangulated] [B.IsTriangulated]
    [B.IsClosedUnderIsomorphisms] :
    A.IsVerdierLeftLocalizing B ↔
      ∀ ⦃X Y : C⦄ (s : X ⟶ Y) (_ : A Y) (_ : B.trW s),
        ∃ (Z : C) (s' : Z ⟶ Y) (a : Z ⟶ X), A Z ∧ (A ⊓ B).trW s' ∧ a ≫ s = s' := by
  rw [← isVerdierRightLocalizing_op_iff, isVerdierRightLocalizing_iff]
  refine ⟨fun hA X Y s hY hs ↦ ?_, fun hA X Y s hX hs ↦ ?_⟩
  · obtain ⟨Z', s', b, hZ', hs', fac⟩ := hA s.op hY (by simpa [trW_op_iff])
    exact ⟨Z'.unop, s'.unop, b.unop, hZ', trW_of_op _ hs', by cat_disch⟩
  · obtain ⟨Z', s', b, hZ', hs', fac⟩ := hA s.unop hX (trW_of_op _ hs)
    exact ⟨_, s'.op, b.op, hZ', trW_of_unop _ hs', by cat_disch⟩

variable {A B} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `626359baa1e11324946a20302994317d2befe4e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
