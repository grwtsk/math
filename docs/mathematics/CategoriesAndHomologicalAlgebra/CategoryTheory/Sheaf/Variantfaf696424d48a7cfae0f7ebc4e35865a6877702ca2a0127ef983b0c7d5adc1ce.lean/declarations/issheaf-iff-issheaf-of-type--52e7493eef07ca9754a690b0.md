# isSheaf_iff_isSheaf_of_type

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3c35e2a64a836226141760d9b33c9d8c8047bcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88ab68cd-0b28-f6cb-5bed-7f71ed75e89b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:015a1262-40ef-70e4-fde5-a5bea6b1eda3",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheaf_of_type",
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
  "slug": "issheaf-iff-issheaf-of-type--52e7493eef07ca9754a690b0",
  "source": {
    "blob": "a3c35e2a64a836226141760d9b33c9d8c8047bcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 347,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52e7493eef07ca9754a690b0fa0214582ba7ed52c0fe2e0e303250035af04f8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:015a1262-40ef-70e4-fde5-a5bea6b1eda3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isSheaf_of_type (P : Cᵒᵖ ⥤ Type w) :
    Presheaf.IsSheaf J P ↔ Presieve.IsSheaf J P := by
  constructor
  · intro hP
    refine' Presieve.isSheaf_iso J _ (hP PUnit)
    refine' isoWhiskerLeft _ Coyoneda.punitIso ≪≫ P.rightUnitor
  · intro hP X Y S hS z hz
    refine' ⟨fun x => (hP S hS).amalgamate (fun Z f hf => z f hf x) _, _, _⟩
    · intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ hf₁ hf₂ h
      exact congr_fun (hz g₁ g₂ hf₁ hf₂ h) x
    · intro Z f hf
      funext x
      apply Presieve.IsSheafFor.valid_glue
    · intro y hy
      funext x
      apply (hP S hS).isSeparatedFor.ext
      intro Y' f hf
      rw [Presieve.IsSheafFor.valid_glue _ _ _ hf, ← hy _ hf]
      rfl
#align category_theory.is_sheaf_iff_is_sheaf_of_type CategoryTheory.isSheaf_iff_isSheaf_of_type

/-- The category of sheaves taking values in Type is the same as the category of set-valued sheaves.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c35e2a64a836226141760d9b33c9d8c8047bcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
