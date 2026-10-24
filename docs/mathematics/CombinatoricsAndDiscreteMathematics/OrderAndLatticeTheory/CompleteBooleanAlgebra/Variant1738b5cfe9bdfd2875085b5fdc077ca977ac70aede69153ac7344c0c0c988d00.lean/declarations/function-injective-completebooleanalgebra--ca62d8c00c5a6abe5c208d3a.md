# Function.Injective.completeBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20fb5eb98a82c3f49584fdb5bf03341aefd5295405bc42157b3b35386f432bb9",
  "kind": "abbrev",
  "lexical_name": "Function.Injective.completeBooleanAlgebra",
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
  "slug": "function-injective-completebooleanalgebra--ca62d8c00c5a6abe5c208d3a",
  "source": {
    "blob": "9a52488b943324a616d8e64dfeae999d4098d5e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 814,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant1738b5cfe9bdfd2875085b5fdc077ca977ac70aede69153ac7344c0c0c988d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca62d8c00c5a6abe5c208d3a60ec7f0ed531c0fe50ac0b1208a9709c22604b6e",
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

Occurrence: `declaration:20fb5eb98a82c3f49584fdb5bf03341aefd5295405bc42157b3b35386f432bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev Function.Injective.completeBooleanAlgebra [Max α] [Min α] [SupSet α] [InfSet α]
    [Top α] [Bot α] [HasCompl α] [HImp α] [SDiff α] [CompleteBooleanAlgebra β] (f : α → β)
    (hf : Injective f) (map_sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b)
    (map_inf : ∀ a b, f (a ⊓ b) = f a ⊓ f b) (map_sSup : ∀ s, f (sSup s) = ⨆ a ∈ s, f a)
    (map_sInf : ∀ s, f (sInf s) = ⨅ a ∈ s, f a) (map_top : f ⊤ = ⊤) (map_bot : f ⊥ = ⊥)
    (map_compl : ∀ a, f aᶜ = (f a)ᶜ) (map_himp : ∀ a b, f (a ⇨ b) = f a ⇨ f b)
    (map_sdiff : ∀ a b, f (a \ b) = f a \ f b) :
    CompleteBooleanAlgebra α where
  __ := hf.completeLattice f map_sup map_inf map_sSup map_sInf map_top map_bot
  __ := hf.booleanAlgebra f map_sup map_inf map_top map_bot map_compl map_sdiff map_himp
  inf_sSup_le_iSup_inf a s := by
    change f (a ⊓ sSup s) ≤ f _
    rw [← sSup_image, map_inf, map_sSup s, inf_iSup₂_eq]
    simp_rw [← map_inf]
    exact ((map_sSup _).trans iSup_image).ge
  iInf_sup_le_sup_sInf a s := by
    change f _ ≤ f (a ⊔ sInf s)
    rw [← sInf_image, map_sup, map_sInf s, sup_iInf₂_eq]
    simp_rw [← map_sup]
    exact ((map_sInf _).trans iInf_image).le

-- See note [reducible non-instances]
/-- Pullback a `CompleteAtomicBooleanAlgebra` along an injection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant1738b5cfe9bdfd2875085b5fdc077ca977ac70aede69153ac7344c0c0c988d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant1738b5cfe9bdfd2875085b5fdc077ca977ac70aede69153ac7344c0c0c988d00.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a52488b943324a616d8e64dfeae999d4098d5e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
