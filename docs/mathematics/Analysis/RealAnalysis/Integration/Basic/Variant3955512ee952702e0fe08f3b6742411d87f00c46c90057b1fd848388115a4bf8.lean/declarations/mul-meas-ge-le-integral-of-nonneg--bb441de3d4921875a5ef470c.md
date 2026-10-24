# mul_meas_ge_le_integral_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:841ad199-963c-5cc0-9a25-fd0b8bb7892b",
  "kind": "theorem",
  "lexical_name": "mul_meas_ge_le_integral_of_nonneg",
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
  "slug": "mul-meas-ge-le-integral-of-nonneg--bb441de3d4921875a5ef470c",
  "source": {
    "blob": "9c1a5aaebbdb15941b2f15ffaa8616528d0f4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1184,
    "line": 1170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb441de3d4921875a5ef470c883146f92e3d99774eebb95a4bd60e52f629069e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:841ad199-963c-5cc0-9a25-fd0b8bb7892b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1170–1184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_meas_ge_le_integral_of_nonneg {f : α → ℝ} (hf_nonneg : 0 ≤ᵐ[μ] f)
    (hf_int : Integrable f μ) (ε : ℝ) : ε * μ.real { x | ε ≤ f x } ≤ ∫ x, f x ∂μ := by
  rcases eq_top_or_lt_top (μ {x | ε ≤ f x}) with hμ | hμ
  · simpa [measureReal_def, hμ] using integral_nonneg_of_ae hf_nonneg
  · have := Fact.mk hμ
    calc
      ε * μ.real { x | ε ≤ f x } = ∫ _ in {x | ε ≤ f x}, ε ∂μ := by simp [mul_comm]
      _ ≤ ∫ x in {x | ε ≤ f x}, f x ∂μ :=
        integral_mono_ae (integrable_const _) (hf_int.mono_measure μ.restrict_le_self) <|
          ae_restrict_mem₀ <| hf_int.aemeasurable.nullMeasurable measurableSet_Ici
      _ ≤ _ := integral_mono_measure μ.restrict_le_self hf_nonneg hf_int

/-- Hölder's inequality for the integral of a product of norms. The integral of the product of two
norms of functions is bounded by the product of their `ℒp` and `ℒq` seminorms when `p` and `q` are
conjugate exponents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean#L1170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1a5aaebbdb15941b2f15ffaa8616528d0f4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
