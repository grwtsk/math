# epi_of_isIso_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "142748cdfd08042d7d344edf2ae5f4b5c87baf8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d36b885c-e3cc-24a6-8796-4411f51ed22f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f41fc87a-08e8-3f16-cae7-93f09a10c5cf",
  "kind": "lemma",
  "lexical_name": "epi_of_isIso_right",
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
  "slug": "epi-of-isiso-right--7a2fcd8b3b184eff8f715fc5",
  "source": {
    "blob": "142748cdfd08042d7d344edf2ae5f4b5c87baf8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variantc46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a2fcd8b3b184eff8f715fc5ee94300eda0d9f642b8aa6971308c31fe717e237",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variantc46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f41fc87a-08e8-3f16-cae7-93f09a10c5cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_of_isIso_right [IsIso f.right] : Epi ((quotient V).map f) where
  left_cancellation g₁ g₂ eq := by
    obtain ⟨g₁, rfl⟩ := (quotient V).map_surjective g₁
    obtain ⟨g₂, rfl⟩ := (quotient V).map_surjective g₂
    set h : RightHomotopy (f ≫ g₁) (f ≫ g₂) := homotopyOfEq _ _ eq
    exact eq_of_rightHomotopy _ _ ⟨inv f.right ≫ h.hom, by simp [dsimp% h.comm]⟩

section Functor

variable [HasZeroObject V]

variable (V)

open ZeroObject in
set_option backward.defeqAttrib.useBackward true in
/-- If `V` has a zero object, this is the functor from `V` to `Arrow V`
that sends an object `X` to the arrow `0 ⟶ X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variantc46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variantc46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142748cdfd08042d7d344edf2ae5f4b5c87baf8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
