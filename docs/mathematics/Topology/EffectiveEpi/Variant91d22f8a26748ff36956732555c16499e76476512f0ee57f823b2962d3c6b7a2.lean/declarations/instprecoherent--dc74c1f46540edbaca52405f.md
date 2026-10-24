# instPrecoherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7faa3fc423cce4e07685b8d62460f22c6143aeaea29ed7e93068c5968243665f",
  "kind": "instance",
  "lexical_name": "instPrecoherent",
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
  "slug": "instprecoherent--dc74c1f46540edbaca52405f",
  "source": {
    "blob": "ea761c42e0ec29f78f1314217b0b11c9bb234360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 244,
    "path": "GRWTSK/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc74c1f46540edbaca52405f69a6c5869524d88308187987a7b69e421289a799",
  "verification": {
    "reference": "docs/verification/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7faa3fc423cce4e07685b8d62460f22c6143aeaea29ed7e93068c5968243665f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPrecoherent: Precoherent Stonean.{u} := by
  constructor
  intro B₁ B₂ f α _ X₁ π₁ h₁
  refine ⟨α, inferInstance, fun a => (pullback f (π₁ a)).presentation, fun a =>
    toCompHaus.preimage (presentation.π _ ≫ (pullback.fst _ _)), ?_, id, fun a =>
    toCompHaus.preimage (presentation.π _ ≫ (pullback.snd _ _ )), fun a => ?_⟩
  · refine ((effectiveEpiFamily_tfae _ _).out 0 2).2 (fun b => ?_)
    have h₁' := ((CompHaus.effectiveEpiFamily_tfae _ _).out 0 2).1 h₁.toCompHaus
    obtain ⟨a, x, h⟩ := h₁' (f b)
    obtain ⟨c, hc⟩ := (CompHaus.epi_iff_surjective _).1
      (presentation.epi_π (CompHaus.pullback f (π₁ a))) ⟨⟨b, x⟩, h.symm⟩
    refine ⟨a, c, ?_⟩
    change toCompHaus.map (toCompHaus.preimage _) _ = _
    simp only [image_preimage, toCompHaus_obj, comp_apply, hc]
    rfl
  · apply map_injective toCompHaus
    simp only [map_comp, image_preimage, Category.assoc]
    congr 1
    ext ⟨⟨_, _⟩, h⟩
    exact h.symm

end Coherent

end Stonean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea761c42e0ec29f78f1314217b0b11c9bb234360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
