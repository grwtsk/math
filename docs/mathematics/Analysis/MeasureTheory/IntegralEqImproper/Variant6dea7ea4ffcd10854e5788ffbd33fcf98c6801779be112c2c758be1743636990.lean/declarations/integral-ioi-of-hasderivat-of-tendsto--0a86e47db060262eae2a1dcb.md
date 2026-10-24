# integral_Ioi_of_hasDerivAt_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d53ddccd-be7b-590f-b2d4-2cfd9cba184f",
  "kind": "theorem",
  "lexical_name": "integral_Ioi_of_hasDerivAt_of_tendsto",
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
  "slug": "integral-ioi-of-hasderivat-of-tendsto--0a86e47db060262eae2a1dcb",
  "source": {
    "blob": "a228878c46fab1445c32059592ea0ad71528f2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 818,
    "line": 794,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a86e47db060262eae2a1dcb13896f0981843ef21448971eb68b8a06477f8382",
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

Occurrence: `result:d53ddccd-be7b-590f-b2d4-2cfd9cba184f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–818.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_Ioi_of_hasDerivAt_of_tendsto (hcont : ContinuousWithinAt f (Ici a) a)
    (hderiv : ∀ x ∈ Ioi a, HasDerivAt f (f' x) x) (f'int : IntegrableOn f' (Ioi a))
    (hf : Tendsto f atTop (𝓝 m)) : ∫ x in Ioi a, f' x = m - f a := by
  have hcont : ContinuousOn f (Ici a) := by
    intro x hx
    rcases hx.out.eq_or_lt with rfl | hx
    · exact hcont
    · exact (hderiv x hx).continuousAt.continuousWithinAt
  refine tendsto_nhds_unique_of_eventuallyEq
    (intervalIntegral_tendsto_integral_Ioi a f'int tendsto_id) (hf.sub_const _) ?_
  filter_upwards [Ioi_mem_atTop a] with x hx
  have h'x : a ≤ id x := le_of_lt hx
  apply
    intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le h'x (hcont.mono Icc_subset_Ici_self)
      fun y hy => hderiv y hy.1
  rw [intervalIntegrable_iff_integrableOn_Ioc_of_le h'x]
  exact f'int.mono (fun y hy => hy.1) le_rfl

/-- **Fundamental theorem of calculus-2**, on semi-infinite intervals `(a, +∞)`.
When a function has a limit at infinity `m`, and its derivative is integrable, then the
integral of the derivative on `(a, +∞)` is `m - f a`. Version assuming differentiability
on `[a, +∞)`.

Note that such a function always has a limit at infinity,
see `tendsto_limUnder_of_hasDerivAt_of_integrableOn_Ioi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a228878c46fab1445c32059592ea0ad71528f2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
