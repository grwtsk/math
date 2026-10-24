# nodal_component_count_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b1ed86f-f9eb-5969-4d82-5d044d50a585",
  "kind": "theorem",
  "lexical_name": "nodal_component_count_lower",
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
  "slug": "nodal-component-count-lower--87cf0a71e1367f81c6c4b7ff",
  "source": {
    "blob": "1035f109adb26add47044a407fa5033b2aefca96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 43,
    "path": "GRWTSK/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87cf0a71e1367f81c6c4b7ff6f085e4555d55f4eedaefbab7665e389102fd51b",
  "verification": {
    "reference": "docs/verification/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b1ed86f-f9eb-5969-4d82-5d044d50a585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodal_component_count_lower {α κ γ : Type*} [TopologicalSpace α]
    [Fintype κ] [Fintype γ] (f : α → ℝ) (rep : κ → α) (atom : γ → α → ℝ)
    (hrep : ∀ k, f (rep k) ≠ 0)
    (hdistinct : Function.Injective (fun k ↦ connectedComponentIn (Function.support f) (rep k)))
    (hconnected : ∀ j, IsPreconnected (Function.support (atom j)))
    (hfaithful : ∀ j, Function.support (atom j) ⊆ Function.support f)
    (hreconstruct : ∀ x, (∑ j, atom j x) = f x) : Fintype.card κ ≤ Fintype.card γ := by
  classical
  have hex : ∀ k, ∃ j, atom j (rep k) ≠ 0 := fun k ↦
    active_atom_exists f atom hreconstruct (hrep k)
  let selected : κ → γ := fun k ↦ Classical.choose (hex k)
  have hselected : ∀ k, atom (selected k) (rep k) ≠ 0 := fun k ↦ Classical.choose_spec (hex k)
  apply Fintype.card_le_of_injective selected
  intro k l hkl
  apply hdistinct
  apply atom_meets_only_one_nodal_component f (atom (selected k))
    (hconnected _) (hfaithful _) (hselected k)
  rw [hkl]
  exact hselected l

/-- The component atom in this module, with the following exact parameterization.

def componentAtom {α : Type*} [TopologicalSpace α] (f : α → ℝ) (x : α) : α → ℝ :=
(connectedComponentIn (Function.support f) x).indicator f
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1035f109adb26add47044a407fa5033b2aefca96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
