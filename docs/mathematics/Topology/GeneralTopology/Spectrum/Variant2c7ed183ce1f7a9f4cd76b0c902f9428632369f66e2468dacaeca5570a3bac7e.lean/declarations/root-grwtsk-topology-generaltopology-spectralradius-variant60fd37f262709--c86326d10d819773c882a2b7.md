# _root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.Real.spectralRadius_mem_spectrum_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93234a89-a3d4-3337-cce9-ac6e82d04b06",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.Real.spectralRadius_mem_spectrum_or",
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
  "slug": "root-grwtsk-topology-generaltopology-spectralradius-variant60fd37f262709--c86326d10d819773c882a2b7",
  "source": {
    "blob": "63c1901026c6855fadc702ac7372ab4733738167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 831,
    "line": 818,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c86326d10d819773c882a2b73aa42902601e1fa11eb0d123c55eaf7eff6b5044",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93234a89-a3d4-3337-cce9-ac6e82d04b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 818–831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.Real.spectralRadius_mem_spectrum_or {A : Type*} [NormedRing A] [NormedAlgebra ℝ A]
    [CompleteSpace A] {a : A} (ha : (spectrum ℝ a).Nonempty) :
    (spectralRadius ℝ a).toReal ∈ spectrum ℝ a ∨ -(spectralRadius ℝ a).toReal ∈ spectrum ℝ a := by
  obtain ⟨x, hx₁, hx₂⟩ := spectrum.exists_nnnorm_eq_spectralRadius_of_nonempty ha
  simp only [← hx₂, ENNReal.coe_toReal, coe_nnnorm, Real.norm_eq_abs]
  exact abs_choice x |>.imp (fun h ↦ by rwa [h]) (fun h ↦ by simpa [h])

end SpectrumRestricts

namespace QuasispectrumRestricts

open NNReal ENNReal
local notation "σₙ" => quasispectrum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean#L818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63c1901026c6855fadc702ac7372ab4733738167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
