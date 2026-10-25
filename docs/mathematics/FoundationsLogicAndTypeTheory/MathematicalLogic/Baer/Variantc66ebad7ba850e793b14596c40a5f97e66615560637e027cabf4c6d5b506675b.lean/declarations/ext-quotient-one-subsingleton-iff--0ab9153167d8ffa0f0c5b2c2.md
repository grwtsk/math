# ext_quotient_one_subsingleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0954a2405474b81313604e243eaef2d33ae5af62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4c1a1e0-09d9-8e86-243c-1de3e1a7fcc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69905b3f-2696-a3c7-d9e3-8d651dc351b5",
  "kind": "lemma",
  "lexical_name": "ext_quotient_one_subsingleton_iff",
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
  "slug": "ext-quotient-one-subsingleton-iff--0ab9153167d8ffa0f0c5b2c2",
  "source": {
    "blob": "0954a2405474b81313604e243eaef2d33ae5af62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ab9153167d8ffa0f0c5b2c2143e1c5649c0151a3c9a60acc767ec29b91ca1f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69905b3f-2696-a3c7-d9e3-8d651dc351b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_quotient_one_subsingleton_iff [Small.{v} R] (M : ModuleCat.{v} R) (I : Ideal R) :
    Subsingleton (Ext ↧(Shrink.{v} (R ⧸ I)) M 1) ↔
    ∀ g : I →ₗ[R] M, ∃ g' : R →ₗ[R] M,
      ∀ (x : R) (mem : x ∈ I), g' x = g ⟨x, mem⟩ := by
  -- The short complex `I → R → R ⧸ I`, with all three terms moved into universe `v`.
  -- This avoids universe issues when comparing it with `Ext` in `ModuleCat.{v} R`.
  have exact : Function.Exact I.subtype I.mkQ := LinearMap.exact_subtype_mkQ I
  let S := ModuleCat.shortComplexOfConj (Shrink.linearEquiv R I) (Shrink.linearEquiv R R)
    (Shrink.linearEquiv R (R ⧸ I)) _ _ exact.linearMap_comp_eq_zero
  -- The complex `I → R → R ⧸ I` is short exact, after shrinking universes.
  have S_exact : S.ShortExact :=
    ModuleCat.shortComplexOfConj_shortExact _ _ _ _ _ exact I.subtype_injective I.mkQ_surjective
  rw [Ext.one_subsingleton_iff_of_projective M S S_exact (by dsimp [S]; infer_instance)]
  -- Reduce the vanishing of `Ext (R ⧸ I) M 1` to surjectivity of
  -- `Ext R M 0 → Ext I M 0`, keeping track of the universe-shrinking equivalences.
  refine ⟨fun h ↦ fun g ↦ ?_, fun h ↦ fun e ↦ ?_⟩
  · -- Interpret `g` as an element of `Ext I M 0` and lift it across `Ext R M 0 → Ext I M 0`.
    obtain ⟨f', hf'⟩ := h
      (Ext.mk₀ (ModuleCat.ofHom (g.comp (Shrink.linearEquiv R I).toLinearMap)))
    rw [Ext.bilinearComp_apply_apply, ← Ext.mk₀_addEquiv₀_apply f',
      Ext.mk₀_comp_mk₀] at hf'
    use (Ext.addEquiv₀ f').hom.comp (Shrink.linearEquiv R R).symm.toLinearMap
    intro x hx
    have := ConcreteCategory.congr_hom ((Ext.mk₀_bijective _ _).1 hf')
      ((Shrink.linearEquiv R I).symm ⟨x, hx⟩)
    simpa [S]
  · -- Conversely, extend the map represented by `e` and turn the extension back into `Ext⁰`.
    obtain ⟨g', hg'⟩ := h
      ((Ext.addEquiv₀ e).hom.comp (Shrink.linearEquiv R I).symm.toLinearMap)
    use Ext.mk₀ (ModuleCat.ofHom (g'.comp (Shrink.linearEquiv R R).toLinearMap))
    rw [Ext.bilinearComp_apply_apply, Ext.mk₀_comp_mk₀, ← Ext.mk₀_addEquiv₀_apply e]
    congr
    ext x
    simp_all [S]

/-- Baer's criterion in Ext form: if `Ext (R ⧸ I) M 1` vanishes for every ideal `I`,
then `M` is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0954a2405474b81313604e243eaef2d33ae5af62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
