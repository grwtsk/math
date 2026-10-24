# le_integral_rpowIntegrand₀₁_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:077868eb-069d-426a-1bfe-cf582690d402",
  "kind": "lemma",
  "lexical_name": "le_integral_rpowIntegrand₀₁_one",
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
  "slug": "le-integral-rpowintegrand-one--fb9f8ecdc1d9e03856a0ae4e",
  "source": {
    "blob": "5acbc2ea0489dab0c3527605f737ba783a708bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 253,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb9f8ecdc1d9e03856a0ae4e5eff850862119d3df460d1cb05eaeb4bae7177b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:077868eb-069d-426a-1bfe-cf582690d402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_integral_rpowIntegrand₀₁_one (hp : p ∈ Ioo 0 1) :
    -1 / (2 * (p - 1)) ≤ ∫ t in Ioi 0, rpowIntegrand₀₁ p t 1 := calc
  _ = (1 / 2) * -((1 : ℝ) ^ (p - 1)) / (p - 1) := by rw [← div_div]; simp [neg_div]
  _ = ∫ t in Ioi 1, (1 / 2) * t ^ (p - 2) := by
        simp only [mem_Ioo] at hp
        rw [integral_const_mul, integral_Ioi_rpow_of_lt (by linarith) zero_lt_one]
        ring_nf   -- ring alone succeeds but gives a warning
  _ ≤ ∫ t in Ioi 1, rpowIntegrand₀₁ p t 1 := by
        refine setIntegral_mono_on ?_ ?_ measurableSet_Ioi ?_
        · refine Integrable.const_mul ?_ _
          simp only [mem_Ioo] at hp
          exact integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
        · exact integrableOn_rpowIntegrand₀₁_Ioi_one hp zero_le_one
        · exact fun t ht =>  rpowIntegrand₀₁_one_ge_rpow_sub_two hp (le_of_lt ht)
  _ ≤ ∫ t in Ioi 0, rpowIntegrand₀₁ p t 1 := by
        refine setIntegral_mono_set (integrableOn_rpowIntegrand₀₁_Ioi hp zero_le_one) ?_ ?_
        · refine ae_restrict_of_forall_mem measurableSet_Ioi fun t ht => ?_
          exact rpowIntegrand₀₁_nonneg hp.1 (le_of_lt ht) zero_le_one
        · exact .of_forall <| Set.Ioi_subset_Ioi zero_le_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5acbc2ea0489dab0c3527605f737ba783a708bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
