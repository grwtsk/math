# LocallyIntegrable.integrable_of_isBigO_atTop_of_norm_isNegInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f36db9b-c366-fdf6-6f38-13c68e75bc9b",
  "kind": "theorem",
  "lexical_name": "LocallyIntegrable.integrable_of_isBigO_atTop_of_norm_isNegInvariant",
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
  "slug": "locallyintegrable-integrable-of-isbigo-attop-of-norm-isneginvariant--3063228a5ce08f50eaf4d619",
  "source": {
    "blob": "945adfca053a8335c7c7a117b3cfa30250d9adb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3063228a5ce08f50eaf4d6196918eae9256fe406df7ec01c7e1092c233c78722",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f36db9b-c366-fdf6-6f38-13c68e75bc9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyIntegrable.integrable_of_isBigO_atTop_of_norm_isNegInvariant
    [IsMeasurablyGenerated (atTop (α := α))] [MeasurableNeg α] [μ.IsNegInvariant]
    (hf : LocallyIntegrable f μ) (hsymm : norm ∘ f =ᵐ[μ] norm ∘ f ∘ Neg.neg) (ho : f =O[atTop] g)
    (hg : IntegrableAtFilter g atTop μ) : Integrable f μ := by
  have h_int := (hf.locallyIntegrableOn (Ici 0)).integrableOn_of_isBigO_atTop ho hg
  rw [← integrableOn_univ, ← Iic_union_Ici_of_le le_rfl, integrableOn_union]
  refine ⟨?_, h_int⟩
  have h_map_neg : (μ.restrict (Ici 0)).map Neg.neg = μ.restrict (Iic 0) := by
    conv => rhs; rw [← Measure.map_neg_eq_self μ, measurableEmbedding_neg.restrict_map]
    simp
  rw [IntegrableOn, ← h_map_neg, measurableEmbedding_neg.integrable_map_iff]
  refine h_int.congr' ?_ hsymm.restrict
  refine AEStronglyMeasurable.comp_aemeasurable ?_ measurable_neg.aemeasurable
  exact h_map_neg ▸ hf.aestronglyMeasurable.restrict

end LinearOrderedAddCommGroup

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945adfca053a8335c7c7a117b3cfa30250d9adb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
