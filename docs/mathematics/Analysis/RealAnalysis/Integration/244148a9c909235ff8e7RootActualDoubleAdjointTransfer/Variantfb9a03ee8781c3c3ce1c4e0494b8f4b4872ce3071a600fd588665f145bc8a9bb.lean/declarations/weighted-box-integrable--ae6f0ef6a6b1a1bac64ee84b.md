# weighted_box_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:542b975b-e49a-8098-d7de-eb5faecdbfcd",
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
  "slug": "weighted-box-integrable--ae6f0ef6a6b1a1bac64ee84b",
  "source": {
    "blob": "17e6559ed7677d8a2bda9d67fd9a9bc54b0a2e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae6f0ef6a6b1a1bac64ee84bb6fb72b268ef4c776c174bc3745e5b455880a945",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:542b975b-e49a-8098-d7de-eb5faecdbfcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–158.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17e6559ed7677d8a2bda9d67fd9a9bc54b0a2e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
