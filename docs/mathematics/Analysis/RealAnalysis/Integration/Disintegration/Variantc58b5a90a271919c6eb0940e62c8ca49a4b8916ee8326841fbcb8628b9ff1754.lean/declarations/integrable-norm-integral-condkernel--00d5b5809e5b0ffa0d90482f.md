# Integrable.norm_integral_condKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef129c8b-f4f5-1991-4cfb-ec5c8945f42f",
  "kind": "theorem",
  "lexical_name": "Integrable.norm_integral_condKernel",
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
  "slug": "integrable-norm-integral-condkernel--00d5b5809e5b0ffa0d90482f",
  "source": {
    "blob": "ba43ee13e0b7da787fe27cb685b7a531403c97ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 529,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00d5b5809e5b0ffa0d90482fec06b4a4ff9b313a3d6c723090ae0ddac16b26f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef129c8b-f4f5-1991-4cfb-ec5c8945f42f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.norm_integral_condKernel {f : α × Ω → E} (hf_int : Integrable f ρ) :
    Integrable (fun x => ‖∫ y, f (x, y) ∂ρ.condKernel x‖) ρ.fst := by
  refine' hf_int.integral_norm_condKernel.mono hf_int.1.integral_condKernel.norm _
  refine' eventually_of_forall fun x => _
  rw [norm_norm]
  refine' (norm_integral_le_integral_norm _).trans_eq (Real.norm_of_nonneg _).symm
  exact integral_nonneg_of_ae (eventually_of_forall fun y => norm_nonneg _)
#align measure_theory.integrable.norm_integral_cond_kernel MeasureTheory.Integrable.norm_integral_condKernel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba43ee13e0b7da787fe27cb685b7a531403c97ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
