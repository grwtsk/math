# CompactT2.ExtremallyDisconnected.projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4c5d0f4-332c-c9b1-cb5f-ed81757ff494",
  "kind": "theorem",
  "lexical_name": "CompactT2.ExtremallyDisconnected.projective",
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
  "slug": "compactt2-extremallydisconnected-projective--edafc587f06b37dae1375cc7",
  "source": {
    "blob": "9398a10bec500bb329a185e11a9d8a1eee72adee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edafc587f06b37dae1375cc789c7e1bb153850748cff3619b8b3d9958a3c8081",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4c5d0f4-332c-c9b1-cb5f-ed81757ff494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem CompactT2.ExtremallyDisconnected.projective [ExtremallyDisconnected A]
    [CompactSpace A] [T2Space A] : CompactT2.Projective A := by
  -- let $B$ and $C$ be compact; let $f : B \twoheadrightarrow C$ and $\phi : A \to C$ be continuous
  intro B C _ _ _ _ _ _ φ f φ_cont f_cont f_surj
  -- let $D := \{(a, b) : \phi(a) = f(b)\}$ with projections $\pi_1 : D \to A$ and $\pi_2 : D \to B$
  let D : Set <| A × B := {x | φ x.fst = f x.snd}
  have D_comp : CompactSpace D := isCompact_iff_compactSpace.mp
    (isClosed_eq (φ_cont.comp continuous_fst) (f_cont.comp continuous_snd)).isCompact
  -- apply Lemma 2.4 to get closed $E$ satisfying "Zorn subset condition"
  let π₁ : D → A := Prod.fst ∘ Subtype.val
  have π₁_cont : Continuous π₁ := continuous_fst.comp continuous_subtype_val
  have π₁_surj : π₁.Surjective := fun a => ⟨⟨⟨a, _⟩, (f_surj <| φ a).choose_spec.symm⟩, rfl⟩
  rcases exists_compact_surjective_zorn_subset π₁_cont π₁_surj with ⟨E, _, E_onto, E_min⟩
  -- apply Lemma 2.3 to get homeomorphism $\pi_1|_E : E \to A$
  let ρ : E → A := E.restrict π₁
  have ρ_cont : Continuous ρ := π₁_cont.continuousOn.restrict
  have ρ_surj : ρ.Surjective := fun a => by
    rcases (E_onto ▸ mem_univ a : a ∈ π₁ '' E) with ⟨d, ⟨hd, rfl⟩⟩; exact ⟨⟨d, hd⟩, rfl⟩
  let ρ' := ExtremallyDisconnected.homeoCompactToT2 ρ_cont ρ_surj E_min
  -- prove $\rho := \pi_2|_E \circ \pi_1|_E^{-1}$ satisfies $\phi = f \circ \rho$
  let π₂ : D → B := Prod.snd ∘ Subtype.val
  have π₂_cont : Continuous π₂ := continuous_snd.comp continuous_subtype_val
  refine ⟨E.restrict π₂ ∘ ρ'.symm, ⟨π₂_cont.continuousOn.restrict.comp ρ'.symm.continuous, ?_⟩⟩
  suffices f ∘ E.restrict π₂ = φ ∘ ρ' by
    rw [← comp.assoc, this, comp.assoc, Homeomorph.self_comp_symm, comp.right_id]
  ext x
  exact x.val.mem.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9398a10bec500bb329a185e11a9d8a1eee72adee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
