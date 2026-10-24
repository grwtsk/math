# weighted_box_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7de29b61-8a92-7fee-fb86-4344f2136e7e",
  "kind": "theorem",
  "lexical_name": "weighted_box_integrable",
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
  "slug": "weighted-box-integrable--6160a4d5a34fb2d9dbaf5bd6",
  "source": {
    "blob": "a7a7e626cc2020f98556c18bde7ab23cbe48b5d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6160a4d5a34fb2d9dbaf5bd6c3aed6f032e13739743cf65fb83daec24fa4b902",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7de29b61-8a92-7fee-fb86-4344f2136e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_box_integrable {l b a c : ℝ} (hlb : l ≤ b) (hac : a ≤ c)
    (f g : ℝ → ℝ) (K : ℝ → ℝ → ℝ)
    (hf : IntervalIntegrable f volume l b) (hg : IntervalIntegrable g volume a c)
    (hK : Continuous (fun z : ℝ × ℝ => K z.1 z.2)) :
    Integrable (fun z : ℝ × ℝ => f z.1 * (g z.2 * K z.1 z.2))
      ((volume.restrict (Ioc l b)).prod (volume.restrict (Ioc a c))) := by
  obtain ⟨C, hC⟩ := (isCompact_Icc.prod isCompact_Icc).exists_bound_of_continuousOn
    hK.continuousOn
  have hb : ∀ᵐ z ∂(volume.restrict (Ioc l b)).prod (volume.restrict (Ioc a c)),
      ‖K z.1 z.2‖ ≤ C := by
    rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Ioc.prod measurableSet_Ioc)] with z hz
    exact hC z ⟨⟨hz.1.1.le, hz.1.2⟩, ⟨hz.2.1.le, hz.2.2⟩⟩
  have hi := ((intervalIntegrable_iff_integrableOn_Ioc_of_le hlb).mp hf).mul_prod
    ((intervalIntegrable_iff_integrableOn_Ioc_of_le hac).mp hg)
  convert hi.mul_bdd hK.aestronglyMeasurable hb using 1
  funext z
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7a7e626cc2020f98556c18bde7ab23cbe48b5d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
