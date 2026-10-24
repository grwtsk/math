# tendsto_zero_of_hasDerivAt_of_integrableOn_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fa60a9d-137f-a49f-e579-e9382691cefd",
  "kind": "theorem",
  "lexical_name": "tendsto_zero_of_hasDerivAt_of_integrableOn_Ioi",
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
  "slug": "tendsto-zero-of-hasderivat-of-integrableon-ioi--fa11ef11fc8a7d1222de5eb7",
  "source": {
    "blob": "a228878c46fab1445c32059592ea0ad71528f2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 764,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa11ef11fc8a7d1222de5eb7c548f5f36d814546df91dcdd03fd08f31b0e8686",
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

Occurrence: `result:9fa60a9d-137f-a49f-e579-e9382691cefd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 764–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_zero_of_hasDerivAt_of_integrableOn_Ioi
    (hderiv : ∀ x ∈ Ioi a, HasDerivAt f (f' x) x)
    (f'int : IntegrableOn f' (Ioi a)) (fint : IntegrableOn f (Ioi a)) :
    Tendsto f atTop (𝓝 0) := by
  let F : E →L[ℝ] Completion E := Completion.toComplL
  have Fderiv : ∀ x ∈ Ioi a, HasDerivAt (F ∘ f) (F (f' x)) x :=
    fun x hx ↦ F.hasFDerivAt.comp_hasDerivAt _ (hderiv x hx)
  have Fint : IntegrableOn (F ∘ f) (Ioi a) := by apply F.integrable_comp fint
  have F'int : IntegrableOn (F ∘ f') (Ioi a) := by apply F.integrable_comp f'int
  have A : Tendsto (F ∘ f) atTop (𝓝 (limUnder atTop (F ∘ f))) := by
    apply tendsto_limUnder_of_hasDerivAt_of_integrableOn_Ioi Fderiv F'int
  have B : limUnder atTop (F ∘ f) = F 0 := by
    have : IntegrableAtFilter (F ∘ f) atTop := by exact ⟨Ioi a, Ioi_mem_atTop _, Fint⟩
    apply IntegrableAtFilter.eq_zero_of_tendsto this ?_ A
    intro s hs
    rcases mem_atTop_sets.1 hs with ⟨b, hb⟩
    rw [← top_le_iff, ← volume_Ici (a := b)]
    exact measure_mono hb
  rwa [B, ← IsEmbedding.tendsto_nhds_iff] at A
  exact (Completion.isUniformEmbedding_coe E).isEmbedding

variable [CompleteSpace E]

/-- **Fundamental theorem of calculus-2**, on semi-infinite intervals `(a, +∞)`.
When a function has a limit at infinity `m`, and its derivative is integrable, then the
integral of the derivative on `(a, +∞)` is `m - f a`. Version assuming differentiability
on `(a, +∞)` and continuity at `a⁺`.

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean#L764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a228878c46fab1445c32059592ea0ad71528f2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
