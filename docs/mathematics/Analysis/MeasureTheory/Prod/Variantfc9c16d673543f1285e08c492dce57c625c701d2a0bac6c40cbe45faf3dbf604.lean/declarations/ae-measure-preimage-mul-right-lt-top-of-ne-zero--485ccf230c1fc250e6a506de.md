# ae_measure_preimage_mul_right_lt_top_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6235d063a20206fcf20a4db10f60203df6b95d4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4232e039-9891-8d33-8e03-9b0333c368ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96686ea7-23ad-fd05-5ac7-2b0971b2d8e7",
  "kind": "theorem",
  "lexical_name": "ae_measure_preimage_mul_right_lt_top_of_ne_zero",
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
  "slug": "ae-measure-preimage-mul-right-lt-top-of-ne-zero--485ccf230c1fc250e6a506de",
  "source": {
    "blob": "6235d063a20206fcf20a4db10f60203df6b95d4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 293,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:485ccf230c1fc250e6a506def973524b0b91c42fae26480b52572fb3dd560fcd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96686ea7-23ad-fd05-5ac7-2b0971b2d8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_measure_preimage_mul_right_lt_top_of_ne_zero [IsMulLeftInvariant ν]
    (sm : MeasurableSet s) (h2s : ν s ≠ 0) (h3s : ν s ≠ ∞) :
    ∀ᵐ x ∂μ, ν ((fun y => y * x) ⁻¹' s) < ∞ := by
  refine' (ae_measure_preimage_mul_right_lt_top ν ν sm h3s).filter_mono _
  refine' (absolutelyContinuous_of_isMulLeftInvariant μ ν _).ae_le
  refine' mt _ h2s
  intro hν
  rw [hν, Measure.coe_zero, Pi.zero_apply]
#align measure_theory.ae_measure_preimage_mul_right_lt_top_of_ne_zero MeasureTheory.ae_measure_preimage_mul_right_lt_top_of_ne_zero
#align measure_theory.ae_measure_preimage_add_right_lt_top_of_ne_zero MeasureTheory.ae_measure_preimage_add_right_lt_top_of_ne_zero

/-- A technical lemma relating two different measures. This is basically [Halmos, §60 Th. A].
  Note that if `f` is the characteristic function of a measurable set `t` this states that
  `μ t = c * μ s` for a constant `c` that does not depend on `μ`.

  Note: There is a gap in the last step of the proof in [Halmos].
  In the last line, the equality `g(x⁻¹)ν(sx⁻¹) = f(x)` holds if we can prove that
  `0 < ν(sx⁻¹) < ∞`. The first inequality follows from §59, Th. D, but the second inequality is
  not justified. We prove this inequality for almost all `x` in
  `MeasureTheory.ae_measure_preimage_mul_right_lt_top_of_ne_zero`. -/
@[to_additive
"A technical lemma relating two different measures. This is basically [Halmos, §60 Th. A]. Note that
if `f` is the characteristic function of a measurable set `t` this states that `μ t = c * μ s` for a
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6235d063a20206fcf20a4db10f60203df6b95d4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
