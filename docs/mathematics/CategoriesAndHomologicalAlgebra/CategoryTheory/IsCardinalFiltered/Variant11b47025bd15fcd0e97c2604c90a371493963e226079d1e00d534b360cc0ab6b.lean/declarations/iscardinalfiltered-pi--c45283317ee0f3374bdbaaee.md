# isCardinalFiltered_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:644bfcb248b990b70e450c92c613c8deb16c3220d24a45e36f8bf10a4c53784e",
  "kind": "instance",
  "lexical_name": "isCardinalFiltered_pi",
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
  "slug": "iscardinalfiltered-pi--c45283317ee0f3374bdbaaee",
  "source": {
    "blob": "f4c848d03449cb7400ec9eb4ac29ff3639a7d061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 259,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c45283317ee0f3374bdbaaee76d0c77e4e70a9346145e2d49f02fd0ebaa9d76b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:644bfcb248b990b70e450c92c613c8deb16c3220d24a45e36f8bf10a4c53784e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCardinalFiltered_pi {ι : Type u'} (J : ι → Type u) [∀ i, Category.{v} (J i)]
    (κ : Cardinal.{w}) [Fact κ.IsRegular] [∀ i, IsCardinalFiltered (J i) κ] :
    IsCardinalFiltered (∀ i, J i) κ where
  nonempty_cocone F hC := ⟨by
    let c (i : ι) := cocone (F ⋙ Pi.eval J i) hC
    exact
      { pt i := (c i).pt
        ι.app X i := (c i).ι.app X
        ι.naturality {X Y} f := by
          ext i
          simpa using! (c i).ι.naturality f }⟩

section

variable {J : Type u} [Category.{v} J] {κ : Cardinal.{w}} [Fact κ.IsRegular]
  (h₁ : (∀ ⦃ι : Type w⦄ (j : ι → J) (_ : HasCardinalLT ι κ),
          ∃ (k : J), ∀ (i : ι), Nonempty (j i ⟶ k)))
  (h₂ : ∀ ⦃ι : Type w⦄ ⦃j k : J⦄ (f : ι → (j ⟶ k)) (_ : HasCardinalLT ι κ),
      ∃ (l : J) (a : k ⟶ l) (b : j ⟶ l), ∀ (i : ι), f i ≫ a = b)

include h₁ h₂ in
omit [Fact κ.IsRegular] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c848d03449cb7400ec9eb4ac29ff3639a7d061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
