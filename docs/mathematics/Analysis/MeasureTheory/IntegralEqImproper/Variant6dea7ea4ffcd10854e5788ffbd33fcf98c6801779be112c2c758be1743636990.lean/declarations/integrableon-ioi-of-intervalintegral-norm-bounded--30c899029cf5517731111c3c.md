# integrableOn_Ioi_of_intervalIntegral_norm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4fab546-454d-5b05-5e35-0770d6bc0a44",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ioi_of_intervalIntegral_norm_bounded",
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
  "slug": "integrableon-ioi-of-intervalintegral-norm-bounded--30c899029cf5517731111c3c",
  "source": {
    "blob": "a228878c46fab1445c32059592ea0ad71528f2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 562,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30c899029cf5517731111c3c623dfc894235c7d5b51c117087a68115f2d937f3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4fab546-454d-5b05-5e35-0770d6bc0a44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ioi_of_intervalIntegral_norm_bounded (I a : ℝ)
    (hfi : ∀ i, IntegrableOn f (Ioc a (b i)) μ) (hb : Tendsto b l atTop)
    (h : ∀ᶠ i in l, (∫ x in a..b i, ‖f x‖ ∂μ) ≤ I) : IntegrableOn f (Ioi a) μ := by
  have hφ : AECover (μ.restrict <| Ioi a) l _ := aecover_Iic hb
  have hfi : ∀ i, IntegrableOn f (Iic (b i)) (μ.restrict <| Ioi a) := by
    intro i
    rw [IntegrableOn, Measure.restrict_restrict (hφ.measurableSet i), inter_comm]
    exact hfi i
  refine hφ.integrable_of_integral_norm_bounded I hfi (h.mp ?_)
  filter_upwards [hb.eventually (eventually_ge_atTop a)] with i hbi
  rw [intervalIntegral.integral_of_le hbi, Measure.restrict_restrict (hφ.measurableSet i),
    inter_comm]
  exact id

/-- If `f` is integrable on intervals `Ioc a (b i)`,
where `b i` tends to ∞, and
`∫ x in a .. b i, ‖f x‖ ∂μ` converges to `I : ℝ` along a filter `l`,
then `f` is integrable on the interval (a, ∞) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a228878c46fab1445c32059592ea0ad71528f2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
