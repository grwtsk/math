# BinaryCofan.IsColimit.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c447f9ee8fa7869ec6c22aa9db7d725eb65a25380af166d789430110e8d6dfa8",
  "kind": "def",
  "lexical_name": "BinaryCofan.IsColimit.mk",
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
  "slug": "binarycofan-iscolimit-mk--9e206f70cd4ee40758428166",
  "source": {
    "blob": "d37bd955f38a3e476ad5121d1db346d4c969a9c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 259,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e206f70cd4ee407584281663fb9f383dabd10ef650a92c497a5624db9e1c3ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c447f9ee8fa7869ec6c22aa9db7d725eb65a25380af166d789430110e8d6dfa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BinaryCofan.IsColimit.mk {X Y : C} (s : BinaryCofan X Y)
    (desc : ∀ {T : C} (_ : X ⟶ T) (_ : Y ⟶ T), s.pt ⟶ T)
    (hd₁ : ∀ {T : C} (f : X ⟶ T) (g : Y ⟶ T), s.inl ≫ desc f g = f)
    (hd₂ : ∀ {T : C} (f : X ⟶ T) (g : Y ⟶ T), s.inr ≫ desc f g = g)
    (uniq :
      ∀ {T : C} (f : X ⟶ T) (g : Y ⟶ T) (m : s.pt ⟶ T) (_ : s.inl ≫ m = f) (_ : s.inr ≫ m = g),
        m = desc f g) :
    IsColimit s :=
  Limits.IsColimit.mk (fun t => desc (BinaryCofan.inl t) (BinaryCofan.inr t))
    (by
      rintro t (rfl | rfl)
      · exact hd₁ _ _
      · exact hd₂ _ _)
    fun _ _ h => uniq _ _ _ (h ⟨WalkingPair.left⟩) (h ⟨WalkingPair.right⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d37bd955f38a3e476ad5121d1db346d4c969a9c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
