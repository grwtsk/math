# compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f65c736f058f6172bb632ef71e636ff1c70faf2b51675e84a3465cca347fdda",
  "kind": "def",
  "lexical_name": "compl",
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
  "slug": "compl--ce735151fbd8f08c7d0acc8b",
  "source": {
    "blob": "854d136bde8223995aa6c586afb59cbcfb53c628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 423,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce735151fbd8f08c7d0acc8b4d7a18e6e86e070e3fe7640c0ae96604046a0dc3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f65c736f058f6172bb632ef71e636ff1c70faf2b51675e84a3465cca347fdda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def compl {α : Type u} {β : Type v} {s : Set α} {t : Set β} [DecidablePred (· ∈ s)]
    [DecidablePred (· ∈ t)] (e₀ : s ≃ t) :
    { e : α ≃ β // ∀ x : s, e x = e₀ x } ≃ ((sᶜ : Set α) ≃ (tᶜ : Set β)) where
  toFun e :=
    subtypeEquiv e fun a =>
      not_congr <|
        Iff.symm <|
          MapsTo.mem_iff (mapsTo_iff_exists_map_subtype.2 ⟨e₀, e.2⟩)
            (SurjOn.mapsTo_compl
              (surjOn_iff_exists_map_subtype.2 ⟨t, e₀, Subset.refl t, e₀.surjective, e.2⟩)
              e.1.injective)
  invFun e₁ :=
    Subtype.mk
      (calc
        α ≃ Sum s (sᶜ : Set α) := (Set.sumCompl s).symm
        _ ≃ Sum t (tᶜ : Set β) := e₀.sumCongr e₁
        _ ≃ β := Set.sumCompl t
        )
      fun x => by
      simp only [Sum.map_inl, trans_apply, sumCongr_apply, Set.sumCompl_apply_inl,
        Set.sumCompl_symm_apply, Trans.trans]
  left_inv e := by
    ext x
    by_cases hx : x ∈ s
    · simp only [Set.sumCompl_symm_apply_of_mem hx, ← e.prop ⟨x, hx⟩, Sum.map_inl, sumCongr_apply,
        trans_apply, Subtype.coe_mk, Set.sumCompl_apply_inl, Trans.trans]
    · simp only [Set.sumCompl_symm_apply_of_not_mem hx, Sum.map_inr, subtypeEquiv_apply,
        Set.sumCompl_apply_inr, trans_apply, sumCongr_apply, Subtype.coe_mk, Trans.trans]
  right_inv e :=
    Equiv.ext fun x => by
      simp only [Sum.map_inr, subtypeEquiv_apply, Set.sumCompl_apply_inr, Function.comp_apply,
        sumCongr_apply, Equiv.coe_trans, Subtype.coe_eta, Subtype.coe_mk, Trans.trans,
        Set.sumCompl_symm_apply_compl]
#align equiv.set.compl Equiv.Set.compl

/-- The set product of two sets is equivalent to the type product of their coercions to types. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `854d136bde8223995aa6c586afb59cbcfb53c628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
