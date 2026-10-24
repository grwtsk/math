# buildIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a89acbc1223e75ef5c7509df1dc3e0e16f4f2c8f656f960f67e9930af38920a8",
  "kind": "def",
  "lexical_name": "buildIsLimit",
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
  "slug": "buildislimit--76be33578509e33dfba77c25",
  "source": {
    "blob": "0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76be33578509e33dfba77c258d8161acd45d31e7b6979fa42f5fdb890ee78abf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a89acbc1223e75ef5c7509df1dc3e0e16f4f2c8f656f960f67e9930af38920a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildIsLimit (t₁ : IsLimit c₁) (t₂ : IsLimit c₂) (hi : IsLimit i) :
    IsLimit (buildLimit s t hs ht i) where
  lift q := by
    refine hi.lift (Fork.ofι ?_ ?_)
    · refine t₁.lift (Fan.mk _ fun j => ?_)
      apply q.π.app j
    · apply t₂.hom_ext
      intro ⟨j⟩
      simp [hs, ht]
  uniq q m w := hi.hom_ext (i.equalizer_ext (t₁.hom_ext fun j => by simpa using w j.1))
  fac s j := by simp

end HasLimitOfHasProductsOfHasEqualizers

open HasLimitOfHasProductsOfHasEqualizers

/-- Given the existence of the appropriate (possibly finite) products and equalizers,
we can construct a limit cone for `F`.
(This assumes the existence of all equalizers, which is technically stronger than needed.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
