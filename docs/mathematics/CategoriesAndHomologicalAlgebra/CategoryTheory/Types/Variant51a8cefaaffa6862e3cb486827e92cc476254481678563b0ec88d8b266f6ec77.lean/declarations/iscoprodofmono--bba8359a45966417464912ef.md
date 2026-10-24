# isCoprodOfMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6313574d5401402c7872e4c22bed609b23b557005d088dc484f1f3455a306f20",
  "kind": "def",
  "lexical_name": "isCoprodOfMono",
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
  "slug": "iscoprodofmono--bba8359a45966417464912ef",
  "source": {
    "blob": "3201ccbcfe5336b07657ecf009e7906d81565928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 359,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bba8359a45966417464912ef65b08a3fb7591129a4ca9c79c8205fb2569f8e19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6313574d5401402c7872e4c22bed609b23b557005d088dc484f1f3455a306f20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isCoprodOfMono {X Y : Type u} (f : X ⟶ Y) [Mono f] :
    IsColimit (BinaryCofan.mk f (Subtype.val : ↑(Set.range f)ᶜ → Y)) := by
  apply Nonempty.some
  rw [binaryCofan_isColimit_iff]
  refine' ⟨(mono_iff_injective f).mp inferInstance, Subtype.val_injective, _⟩
  symm
  rw [← eq_compl_iff_isCompl]
  exact Subtype.range_val
#align category_theory.limits.types.is_coprod_of_mono CategoryTheory.Limits.Types.isCoprodOfMono

/--
The category of types has `Π j, f j` as the product of a type family `f : J → TypeMax.{v, u}`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3201ccbcfe5336b07657ecf009e7906d81565928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
