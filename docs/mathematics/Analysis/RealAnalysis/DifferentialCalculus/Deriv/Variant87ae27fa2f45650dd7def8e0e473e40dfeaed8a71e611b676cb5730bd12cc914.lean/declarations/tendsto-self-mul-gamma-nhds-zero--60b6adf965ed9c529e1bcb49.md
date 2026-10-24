# tendsto_self_mul_Gamma_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc2f577b-c634-fbb0-1848-33db3d805194",
  "kind": "theorem",
  "lexical_name": "tendsto_self_mul_Gamma_nhds_zero",
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
  "slug": "tendsto-self-mul-gamma-nhds-zero--60b6adf965ed9c529e1bcb49",
  "source": {
    "blob": "126247f85d7b1102de744b698efd41eab61fe787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b6adf965ed9c529e1bcb490276efeea02dcebb672c1ef6c5622620927244d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc2f577b-c634-fbb0-1848-33db3d805194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_self_mul_Gamma_nhds_zero : Tendsto (fun z : ℂ => z * Gamma z) (𝓝[≠] 0) (𝓝 1) := by
  rw [show 𝓝 (1 : ℂ) = 𝓝 (Gamma (0 + 1)) by simp only [zero_add, Complex.Gamma_one]]
  convert (Tendsto.mono_left _ nhdsWithin_le_nhds).congr'
    (eventuallyEq_of_mem self_mem_nhdsWithin Complex.Gamma_add_one) using 1
  refine ContinuousAt.comp (g := Gamma) ?_ (continuous_id.add continuous_const).continuousAt
  refine (Complex.differentiableAt_Gamma _ fun m => ?_).continuousAt
  rw [zero_add, ← ofReal_natCast, ← ofReal_neg, ← ofReal_one, Ne, ofReal_inj]
  refine (lt_of_le_of_lt ?_ zero_lt_one).ne'
  exact neg_nonpos.mpr (Nat.cast_nonneg _)

end Complex

namespace Real

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `126247f85d7b1102de744b698efd41eab61fe787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
