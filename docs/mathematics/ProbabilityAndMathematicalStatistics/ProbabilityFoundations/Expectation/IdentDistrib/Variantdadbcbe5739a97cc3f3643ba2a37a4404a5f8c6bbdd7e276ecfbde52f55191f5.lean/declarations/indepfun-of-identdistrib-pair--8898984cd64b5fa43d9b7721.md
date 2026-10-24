# indepFun_of_identDistrib_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b7e88d48394bd8d97462a995106752a1041c46d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c137f33b-9edd-b6dd-2e33-b270a77e8409",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9658732-24ad-1d56-d2de-0a69c9967eff",
  "kind": "lemma",
  "lexical_name": "indepFun_of_identDistrib_pair",
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
  "slug": "indepfun-of-identdistrib-pair--8898984cd64b5fa43d9b7721",
  "source": {
    "blob": "5b7e88d48394bd8d97462a995106752a1041c46d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 361,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8898984cd64b5fa43d9b7721372cb10c81b03308904af270606c29391c1e3d30",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9658732-24ad-1d56-d2de-0a69c9967eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indepFun_of_identDistrib_pair
    {μ : Measure γ} {μ' : Measure δ} [IsFiniteMeasure μ] [IsFiniteMeasure μ']
    {X : γ → α} {X' : δ → α} {Y : γ → β} {Y' : δ → β} (h_indep : X ⟂ᵢ[μ] Y)
    (h_ident : IdentDistrib (fun ω ↦ (X ω, Y ω)) (fun ω ↦ (X' ω, Y' ω)) μ μ') :
    X' ⟂ᵢ[μ'] Y' := by
  rw [indepFun_iff_map_prod_eq_prod_map_map, ← h_ident.map_eq, h_indep.map_prod_eq_prod_map_map]
  · exact congr (congrArg Measure.prod <| (h_ident.comp measurable_fst).map_eq)
      (h_ident.comp measurable_snd).map_eq
  · exact measurable_fst.aemeasurable.comp_aemeasurable h_ident.aemeasurable_fst
  · exact measurable_snd.aemeasurable.comp_aemeasurable h_ident.aemeasurable_fst
  · exact measurable_fst.aemeasurable.comp_aemeasurable h_ident.aemeasurable_snd
  · exact measurable_snd.aemeasurable.comp_aemeasurable h_ident.aemeasurable_snd

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b7e88d48394bd8d97462a995106752a1041c46d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
