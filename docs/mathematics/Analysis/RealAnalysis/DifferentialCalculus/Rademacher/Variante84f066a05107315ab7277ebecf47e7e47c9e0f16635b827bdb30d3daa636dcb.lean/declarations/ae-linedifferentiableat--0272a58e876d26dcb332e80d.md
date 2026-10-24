# ae_lineDifferentiableAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dedbf691-e86f-7efa-8d39-8ae1e8ad375f",
  "kind": "theorem",
  "lexical_name": "ae_lineDifferentiableAt",
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
  "slug": "ae-linedifferentiableat--0272a58e876d26dcb332e80d",
  "source": {
    "blob": "0da3e3d4b8d695aed3d96e0072caafea5557e7c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0272a58e876d26dcb332e80d4f3bb8d37286a3e37273d0fa36f8c1f804fa982f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dedbf691-e86f-7efa-8d39-8ae1e8ad375f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_lineDifferentiableAt
    (hf : LipschitzWith C f) (v : E) :
    ∀ᵐ p ∂μ, LineDifferentiableAt ℝ f p v := by
  let L : ℝ →L[ℝ] E := ContinuousLinearMap.smulRight (1 : ℝ →L[ℝ] ℝ) v
  suffices A : ∀ p, ∀ᵐ (t : ℝ) ∂volume, LineDifferentiableAt ℝ f (p + t • v) v from
    ae_mem_of_ae_add_linearMap_mem L.toLinearMap volume μ
      (measurableSet_lineDifferentiableAt hf.continuous) A
  intro p
  have : ∀ᵐ (s : ℝ), DifferentiableAt ℝ (fun t ↦ f (p + t • v)) s :=
    (hf.comp ((LipschitzWith.const p).add L.lipschitz)).ae_differentiableAt_real
  filter_upwards [this] with s hs
  have h's : DifferentiableAt ℝ (fun t ↦ f (p + t • v)) (s + 0) := by simpa using hs
  have : DifferentiableAt ℝ (fun t ↦ s + t) 0 := differentiableAt_id.const_add _
  simp only [LineDifferentiableAt]
  convert h's.comp 0 this with _ t
  simp only [LineDifferentiableAt, add_assoc, Function.comp_apply, add_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0da3e3d4b8d695aed3d96e0072caafea5557e7c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
