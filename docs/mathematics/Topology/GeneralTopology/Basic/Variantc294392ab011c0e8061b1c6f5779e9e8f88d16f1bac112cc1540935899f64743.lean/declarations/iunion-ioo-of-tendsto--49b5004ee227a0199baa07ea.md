# iUnion_Ioo_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3ea1894-c91f-3d65-308d-7fc158694a03",
  "kind": "theorem",
  "lexical_name": "iUnion_Ioo_of_tendsto",
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
  "slug": "iunion-ioo-of-tendsto--49b5004ee227a0199baa07ea",
  "source": {
    "blob": "4d0401c8feeee1aec4f49e22c2ffde8a8520e9ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 463,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b5004ee227a0199baa07ea281d0380f8984dfd4b30dd6c616e113a8fe37654",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3ea1894-c91f-3d65-308d-7fc158694a03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_Ioo_of_tendsto [Finite ι] {I : Box ι} {J : ℕ → Box ι} (hJ : Monotone J)
    (hl : Tendsto (lower ∘ J) atTop (𝓝 I.lower)) (hu : Tendsto (upper ∘ J) atTop (𝓝 I.upper)) :
    ⋃ n, Box.Ioo (J n) = Box.Ioo I :=
  have hl' : ∀ i, Antitone fun n ↦ (J n).lower i :=
    fun i ↦ (monotone_eval i).comp_antitone (antitone_lower.comp_monotone hJ)
  have hu' : ∀ i, Monotone fun n ↦ (J n).upper i :=
    fun i ↦ (monotone_eval i).comp (monotone_upper.comp hJ)
  calc
    ⋃ n, Box.Ioo (J n) = pi univ fun i ↦ ⋃ n, Ioo ((J n).lower i) ((J n).upper i) :=
      iUnion_univ_pi_of_monotone fun i ↦ (hl' i).Ioo (hu' i)
    _ = Box.Ioo I :=
      pi_congr rfl fun i _ ↦
        iUnion_Ioo_of_mono_of_isGLB_of_isLUB (hl' i) (hu' i)
          (isGLB_of_tendsto_atTop (hl' i) (tendsto_pi_nhds.1 hl _))
          (isLUB_of_tendsto_atTop (hu' i) (tendsto_pi_nhds.1 hu _))
#align box_integral.box.Union_Ioo_of_tendsto BoxIntegral.Box.iUnion_Ioo_of_tendsto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d0401c8feeee1aec4f49e22c2ffde8a8520e9ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
