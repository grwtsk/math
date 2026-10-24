# restrictPreimage'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbc1c948d2747f441887a203dde0a53cc448ec814f14e5cad1c002b593f95b56",
  "kind": "def",
  "lexical_name": "restrictPreimage'",
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
  "slug": "restrictpreimage--023ef76856678b081592bd61",
  "source": {
    "blob": "91b5e7139bf1f2d442ffa4a4297aab91a9cf0168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 282,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:023ef76856678b081592bd61f44eadaf1d5ff56a650627110d182bb92703c477",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbc1c948d2747f441887a203dde0a53cc448ec814f14e5cad1c002b593f95b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrictPreimage' (e : Pretrivialization F proj) (s : Set B)
    [Nonempty (s → F → proj ⁻¹' s)] : Pretrivialization F (s.restrictPreimage proj) where
  toFun z := (⟨proj z, z.2⟩, (e z).2)
  invFun x := by classical exact if h : (x.1.1, x.2) ∈ e.target then ⟨e.invFun (x.1, x.2), by
      simpa only [mem_preimage, ← e.proj_toFun _ (e.map_target' h), e.right_inv' h] using! x.1.2⟩
    else Classical.arbitrary (s → F → _) x.1 x.2
  source := Subtype.val ⁻¹' e.source
  target := (Prod.map Subtype.val id) ⁻¹' e.target
  map_source' z hz := by
    simpa only [Prod.map_apply, ← e.proj_toFun _ hz] using! e.map_source' hz
  map_target' x hx := by
    simp only [mem_preimage, (Prod.map_apply), id_eq] at hx
    rw [dite_eq_left hx]; exact e.map_target' hx
  left_inv' z hz := by
    dsimp only; rw [dite_eq_left] <;> all_goals simp_rw [← e.proj_toFun _ hz]
    exacts [Subtype.ext (e.left_inv' hz), e.map_source' hz]
  right_inv' x hx := Subtype.val_injective.prodMap injective_id <| by
    simp only [mem_preimage, (Prod.map_apply), id_eq] at hx
    simp_rw [Prod.map_apply]; rw [dite_eq_left hx]
    convert! ← e.right_inv' hx; exact e.proj_toFun _ (e.map_target' hx)
  open_target := e.open_target.preimage <| by fun_prop
  baseSet := Subtype.val ⁻¹' e.baseSet
  open_baseSet := e.open_baseSet.preimage continuous_subtype_val
  source_eq := Set.ext fun _ ↦ Set.ext_iff.mp e.source_eq _
  target_eq := Set.ext fun _ ↦ Set.ext_iff.mp e.target_eq _
  proj_toFun _ _ := rfl

/-- The restriction of a pretrivialization to a set with nonempty intersection with the base set. -/
@[simps! toFun source target baseSet]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91b5e7139bf1f2d442ffa4a4297aab91a9cf0168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
