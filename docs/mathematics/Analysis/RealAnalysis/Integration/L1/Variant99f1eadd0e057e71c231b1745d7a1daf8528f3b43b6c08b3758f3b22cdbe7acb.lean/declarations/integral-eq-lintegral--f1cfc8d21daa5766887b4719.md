# integral_eq_lintegral'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c15ad939-4ad6-93c9-13ca-269ccc3728f8",
  "kind": "theorem",
  "lexical_name": "integral_eq_lintegral'",
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
  "slug": "integral-eq-lintegral--f1cfc8d21daa5766887b4719",
  "source": {
    "blob": "5920ecca9951406866696dcf79bf2219d0bb186f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1cfc8d21daa5766887b471931060de10b876bc11b91020ce854454f5dba1913",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c15ad939-4ad6-93c9-13ca-269ccc3728f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_lintegral' {f : α →ₛ E} {g : E → ℝ≥0∞} (hf : Integrable f μ) (hg0 : g 0 = 0)
    (ht : ∀ b, g b ≠ ∞) :
    (f.map (ENNReal.toReal ∘ g)).integral μ = ENNReal.toReal (∫⁻ a, g (f a) ∂μ) := by
  have hf' : f.FinMeasSupp μ := integrable_iff_finMeasSupp.1 hf
  simp only [← map_apply g f, lintegral_eq_lintegral]
  rw [map_integral f _ hf, map_lintegral, ENNReal.toReal_sum]
  · refine Finset.sum_congr rfl fun b _ => ?_
    rw [smul_eq_mul, toReal_mul, mul_comm, Function.comp_apply, measureReal_def]
  · rintro a -
    by_cases a0 : a = 0
    · rw [a0, hg0, zero_mul]; exact WithTop.zero_ne_top
    · apply mul_ne_top (ht a) (hf'.meas_preimage_singleton_ne_zero a0).ne
  · simp [hg0]

variable [NormedSpace ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5920ecca9951406866696dcf79bf2219d0bb186f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
