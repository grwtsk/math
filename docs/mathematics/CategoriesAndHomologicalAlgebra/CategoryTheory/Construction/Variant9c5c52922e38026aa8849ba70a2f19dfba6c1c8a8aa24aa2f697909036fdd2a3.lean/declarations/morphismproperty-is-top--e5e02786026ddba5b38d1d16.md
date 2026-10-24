# morphismProperty_is_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f7e0457b1021ece29c7bdd2b8108157820d4e3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e63496c5-68f6-1342-b3d7-bc95bb9c673a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20b72623-7a3e-124f-bd6e-dc04f52e7f51",
  "kind": "theorem",
  "lexical_name": "morphismProperty_is_top'",
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
  "slug": "morphismproperty-is-top--e5e02786026ddba5b38d1d16",
  "source": {
    "blob": "1f7e0457b1021ece29c7bdd2b8108157820d4e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e02786026ddba5b38d1d16c2285960ea26aabd3353eaa6fde1c244d39a878f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20b72623-7a3e-124f-bd6e-dc04f52e7f51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem morphismProperty_is_top' (P : MorphismProperty W.Localization)
    [P.IsStableUnderComposition] (hP₁ : ∀ ⦃X Y : C⦄ (f : X ⟶ Y), P (W.Q.map f))
    (hP₂ : ∀ ⦃X Y : W.Localization⦄ (e : X ≅ Y) (_ : P e.hom), P e.inv) : P = ⊤ :=
  morphismProperty_is_top P hP₁ (fun _ _ w _ => hP₂ _ (hP₁ w))

namespace NatTransExtension

variable {F₁ F₂ : W.Localization ⥤ D} (τ : W.Q ⋙ F₁ ⟶ W.Q ⋙ F₂)

/-- If `F₁` and `F₂` are functors `W.Localization ⥤ D` and if we have
`τ : W.Q ⋙ F₁ ⟶ W.Q ⋙ F₂`, we shall define a natural transformation `F₁ ⟶ F₂`.
This is the `app` field of this natural transformation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f7e0457b1021ece29c7bdd2b8108157820d4e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
