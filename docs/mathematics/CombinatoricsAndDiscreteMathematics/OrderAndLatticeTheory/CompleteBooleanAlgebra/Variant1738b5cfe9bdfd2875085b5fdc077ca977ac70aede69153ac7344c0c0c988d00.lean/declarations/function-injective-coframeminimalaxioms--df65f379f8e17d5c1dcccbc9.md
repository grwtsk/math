# Function.Injective.coframeMinimalAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b911fec95faa5bfced11c50747111a088a4e31a87eadbfdf59f8ec8a0b5eb846",
  "kind": "abbrev",
  "lexical_name": "Function.Injective.coframeMinimalAxioms",
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
  "slug": "function-injective-coframeminimalaxioms--df65f379f8e17d5c1dcccbc9",
  "source": {
    "blob": "9a52488b943324a616d8e64dfeae999d4098d5e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 714,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant1738b5cfe9bdfd2875085b5fdc077ca977ac70aede69153ac7344c0c0c988d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df65f379f8e17d5c1dcccbc9ae79d0f4da4ad0b8a42b026540847fd860b7bbf2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant1738b5cfe9bdfd2875085b5fdc077ca977ac70aede69153ac7344c0c0c988d00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b911fec95faa5bfced11c50747111a088a4e31a87eadbfdf59f8ec8a0b5eb846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev Function.Injective.coframeMinimalAxioms [Max α] [Min α] [SupSet α] [InfSet α]
    [Top α] [Bot α] (minAx : Coframe.MinimalAxioms β) (f : α → β) (hf : Injective f)
    (map_sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (map_inf : ∀ a b, f (a ⊓ b) = f a ⊓ f b)
    (map_sSup : ∀ s, f (sSup s) = ⨆ a ∈ s, f a) (map_sInf : ∀ s, f (sInf s) = ⨅ a ∈ s, f a)
    (map_top : f ⊤ = ⊤) (map_bot : f ⊥ = ⊥) : Coframe.MinimalAxioms α where
  __ := hf.completeLattice f map_sup map_inf map_sSup map_sInf map_top map_bot
  iInf_sup_le_sup_sInf a s := by
    change f _ ≤ f (a ⊔ sInf s)
    rw [← sInf_image, map_sup, map_sInf s, minAx.sup_iInf₂_eq]
    simp_rw [← map_sup]
    exact ((map_sInf _).trans iInf_image).le

-- See note [reducible non-instances]
/-- Pullback an `Order.Frame` along an injection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant1738b5cfe9bdfd2875085b5fdc077ca977ac70aede69153ac7344c0c0c988d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant1738b5cfe9bdfd2875085b5fdc077ca977ac70aede69153ac7344c0c0c988d00.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a52488b943324a616d8e64dfeae999d4098d5e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
