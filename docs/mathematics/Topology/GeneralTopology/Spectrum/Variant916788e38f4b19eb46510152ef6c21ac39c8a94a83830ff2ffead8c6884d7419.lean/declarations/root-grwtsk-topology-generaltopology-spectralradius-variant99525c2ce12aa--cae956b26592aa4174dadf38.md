# _root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.Subalgebra.isUnit_of_isUnit_val_of_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cb7b0a1-4a22-c9f8-6d58-8582ad6284d1",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.Subalgebra.isUnit_of_isUnit_val_of_eventually",
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
  "slug": "root-grwtsk-topology-generaltopology-spectralradius-variant99525c2ce12aa--cae956b26592aa4174dadf38",
  "source": {
    "blob": "9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 616,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae956b26592aa4174dadf385d88edaf8ca38b39ba6cd118171f4b05e8e4cfb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb7b0a1-4a22-c9f8-6d58-8582ad6284d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.Subalgebra.isUnit_of_isUnit_val_of_eventually {l : Filter S} {a : S}
    (ha : IsUnit (a : A)) (hla : l ≤ 𝓝 a) (hl : ∀ᶠ x in l, IsUnit x) (hl' : l.NeBot) :
    IsUnit a := by
  have hla₂ : Tendsto Ring.inverse (map (val S) l) (𝓝 (↑ha.unit⁻¹ : A)) := by
    rw [← Ring.inverse_unit]
    exact (NormedRing.inverse_continuousAt _).tendsto.comp <|
      continuousAt_subtype_val.tendsto.comp <| map_mono hla
  suffices mem : (↑ha.unit⁻¹ : A) ∈ S by
    refine ⟨⟨a, ⟨(↑ha.unit⁻¹ : A), mem⟩, ?_, ?_⟩, rfl⟩
    all_goals ext; simp
  apply hS.mem_of_tendsto hla₂
  rw [Filter.eventually_map]
  apply hl.mono fun x hx ↦ ?_
  suffices Ring.inverse (val S x) = (val S ↑hx.unit⁻¹) from this ▸ Subtype.property _
  rw [← (hx.map (val S)).unit_spec, Ring.inverse_unit (hx.map (val S)).unit, val]
  apply Units.mul_eq_one_iff_inv_eq.mp
  simpa [-IsUnit.mul_val_inv] using congr(($hx.mul_val_inv : A))

/-- If `S : Subalgebra 𝕜 A` is a closed subalgebra of a Banach algebra `A`, then for any
`x : S`, the boundary of the spectrum of `x` relative to `S` is a subset of the spectrum of
`↑x : A` relative to `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
