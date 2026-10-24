# continuous_integral_apply_inv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:facba0dd-4549-35d9-f957-155d31224f99",
  "kind": "lemma",
  "lexical_name": "continuous_integral_apply_inv_mul",
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
  "slug": "continuous-integral-apply-inv-mul--5271096889afe538e101f8e3",
  "source": {
    "blob": "39ab965024e0bac57bd24f01951a70af90276218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 111,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5271096889afe538e101f8e3751b74786bc7e6c19fca9665df28ed8ffd556be0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:facba0dd-4549-35d9-f957-155d31224f99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_integral_apply_inv_mul
    {G : Type*} [TopologicalSpace G] [LocallyCompactSpace G] [Group G] [IsTopologicalGroup G]
    [MeasurableSpace G] [BorelSpace G]
    {μ : Measure G} [IsFiniteMeasureOnCompacts μ] {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] {g : G → E}
    (hg : Continuous g) (h'g : HasCompactSupport g) :
    Continuous (fun (x : G) ↦ ∫ y, g (y⁻¹ * x) ∂μ) := by
  let k := tsupport g
  have k_comp : IsCompact k := h'g
  apply continuous_iff_continuousAt.2 (fun x₀ ↦ ?_)
  obtain ⟨t, t_comp, ht⟩ : ∃ t, IsCompact t ∧ t ∈ 𝓝 x₀ := exists_compact_mem_nhds x₀
  let k' : Set G := t • k⁻¹
  have k'_comp : IsCompact k' := t_comp.smul_set k_comp.inv
  have A : ContinuousOn (fun (x : G) ↦ ∫ y, g (y⁻¹ * x) ∂μ) t := by
    apply continuousOn_integral_of_compact_support k'_comp
    · exact (hg.comp (continuous_snd.inv.mul continuous_fst)).continuousOn
    · intro p x hp hx
      contrapose! hx
      refine ⟨p, hp, p⁻¹ * x, ?_, by simp⟩
      simpa only [Set.mem_inv, mul_inv_rev, inv_inv] using subset_tsupport _ hx
  exact A.continuousAt ht

namespace Measure

section Group

variable {G : Type*} [TopologicalSpace G] [Group G] [IsTopologicalGroup G]
  [MeasurableSpace G] [BorelSpace G]

/-!
### Uniqueness of integrals of compactly supported functions

Two left invariant measures coincide when integrating continuous compactly supported functions,
up to a scalar that we denote with `haarScalarFactor μ' μ `.

This is proved by relating the integral for arbitrary left invariant and right invariant measures,
applying a version of Fubini.
As one may use the same right invariant measure, this shows that two different left invariant
measures will give the same integral, up to some fixed scalar.
-/

/-- In a group with a left invariant measure `μ` and a right invariant measure `ν`, one can express
integrals with respect to `μ` as integrals with respect to `ν` up to a constant scaling factor
(given in the statement as `∫ x, g x ∂μ` where `g` is a fixed reference function) and an
explicit density `y ↦ 1/∫ z, g (z⁻¹ * y) ∂ν`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ab965024e0bac57bd24f01951a70af90276218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
