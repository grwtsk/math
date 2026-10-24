# cauchy_map_integralSum_toFilteriUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32998f2a-db2f-f0e1-cabf-fffba8506fbf",
  "kind": "theorem",
  "lexical_name": "cauchy_map_integralSum_toFilteriUnion",
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
  "slug": "cauchy-map-integralsum-tofilteriunion--04e762e4bdf42236c16dde65",
  "source": {
    "blob": "6098dac7fbdb5c9e227e6daf427dac61b577eb6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 524,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04e762e4bdf42236c16dde657d0ae78decc0df3d430647d802be471699e53c97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32998f2a-db2f-f0e1-cabf-fffba8506fbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchy_map_integralSum_toFilteriUnion (h : Integrable I l f vol) (π₀ : Prepartition I) :
    Cauchy ((l.toFilteriUnion I π₀).map (integralSum f vol)) := by
  refine' ⟨inferInstance, _⟩
  rw [prod_map_map_eq, ← toFilter_inf_iUnion_eq, ← prod_inf_prod, prod_principal_principal]
  exact h.tendsto_integralSum_toFilter_prod_self_inf_iUnion_eq_uniformity.mono_left
    (inf_le_inf_left _ <| principal_mono.2 fun π h => h.1.trans h.2.symm)
#align box_integral.integrable.cauchy_map_integral_sum_to_filter_Union BoxIntegral.Integrable.cauchy_map_integralSum_toFilteriUnion

variable [CompleteSpace F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6098dac7fbdb5c9e227e6daf427dac61b577eb6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
