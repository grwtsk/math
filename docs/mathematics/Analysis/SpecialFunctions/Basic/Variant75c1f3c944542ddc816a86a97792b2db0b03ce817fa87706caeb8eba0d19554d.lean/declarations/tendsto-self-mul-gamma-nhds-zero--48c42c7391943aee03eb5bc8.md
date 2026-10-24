# tendsto_self_mul_Gamma_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f54c506-2b4c-5245-5d1d-6d2804e4bff7",
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
  "slug": "tendsto-self-mul-gamma-nhds-zero--48c42c7391943aee03eb5bc8",
  "source": {
    "blob": "7955ef85b393fe1fd289876bb27a17a94b86454c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 461,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c42c7391943aee03eb5bc87e7292d9e68e573ced05ff2ef975f3e80f6e2c12",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f54c506-2b4c-5245-5d1d-6d2804e4bff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_self_mul_Gamma_nhds_zero : Tendsto (fun z : ℂ => z * Gamma z) (𝓝[≠] 0) (𝓝 1) := by
  rw [show 𝓝 (1 : ℂ) = 𝓝 (Gamma (0 + 1)) by simp only [zero_add, Complex.Gamma_one]]
  convert (Tendsto.mono_left _ nhdsWithin_le_nhds).congr'
    (eventuallyEq_of_mem self_mem_nhdsWithin Complex.Gamma_add_one)
  refine' ContinuousAt.comp (g := Gamma) _ (continuous_id.add continuous_const).continuousAt
  refine' (Complex.differentiableAt_Gamma _ fun m => _).continuousAt
  rw [zero_add, ← ofReal_nat_cast, ← ofReal_neg, ← ofReal_one, Ne.def, ofReal_inj]
  refine' (lt_of_le_of_lt _ zero_lt_one).ne'
  exact neg_nonpos.mpr (Nat.cast_nonneg _)
#align complex.tendsto_self_mul_Gamma_nhds_zero Complex.tendsto_self_mul_Gamma_nhds_zero

end Complex

namespace Real

/-- The `Γ` function (of a real variable `s`). -/
-- @[pp_nodot] -- Porting note: removed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7955ef85b393fe1fd289876bb27a17a94b86454c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
