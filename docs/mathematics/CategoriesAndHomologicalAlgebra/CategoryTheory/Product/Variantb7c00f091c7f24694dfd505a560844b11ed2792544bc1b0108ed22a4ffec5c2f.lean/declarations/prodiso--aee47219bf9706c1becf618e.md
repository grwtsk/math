# prodIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5a94f416f644121023b495b745208afabcfc81b6261244f3754fa0d12750fbe",
  "kind": "def",
  "lexical_name": "prodIso",
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
  "slug": "prodiso--aee47219bf9706c1becf618e",
  "source": {
    "blob": "5b1d70e32bd0489675babedc26471ffe032d103c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aee47219bf9706c1becf618e7b3ecd63dc129ecd941c98a097b98546511ec4b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5a94f416f644121023b495b745208afabcfc81b6261244f3754fa0d12750fbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodIso : CategoryTheory.Grpd.of (πₓ A × πₓ B) ≅ πₓ (TopCat.of (A × B)) where
  hom := prodToProdTop A B
  inv := (projLeft A B).prod' (projRight A B)
  hom_inv_id := by
    change prodToProdTop A B ⋙ (projLeft A B).prod' (projRight A B) = 𝟭 _
    apply CategoryTheory.Functor.hext; · intros; ext <;> simp <;> rfl
    rintro ⟨x₀, x₁⟩ ⟨y₀, y₁⟩ ⟨f₀, f₁⟩
    have : Path.Homotopic.projLeft ((prodToProdTop A B).map (f₀, f₁)) = f₀ ∧
      Path.Homotopic.projRight ((prodToProdTop A B).map (f₀, f₁)) = f₁ :=
        And.intro (Path.Homotopic.projLeft_prod f₀ f₁) (Path.Homotopic.projRight_prod f₀ f₁)
    simpa
  inv_hom_id := by
    change (projLeft A B).prod' (projRight A B) ⋙ prodToProdTop A B = 𝟭 _
    apply CategoryTheory.Functor.hext
    · intros; apply FundamentalGroupoid.ext; apply Prod.ext <;> simp <;> rfl
    rintro ⟨x₀, x₁⟩ ⟨y₀, y₁⟩ f
    simpa [-Path.Homotopic.prod_projLeft_projRight] using Path.Homotopic.prod_projLeft_projRight f

end Prod

end FundamentalGroupoidFunctor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb7c00f091c7f24694dfd505a560844b11ed2792544bc1b0108ed22a4ffec5c2f.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b1d70e32bd0489675babedc26471ffe032d103c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
