# indepFun_of_identDistrib_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31080362-20a6-b389-9fb9-5dd11775eb7e",
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
  "slug": "indepfun-of-identdistrib-pair--333727c089c29798e039b2dd",
  "source": {
    "blob": "f41181451b5ee29856accadce842ab60e1cf0f37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 353,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:333727c089c29798e039b2ddf3bb0091587b89dedabf41bd44efb3a0d0a59da5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31080362-20a6-b389-9fb9-5dd11775eb7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indepFun_of_identDistrib_pair
    {μ : Measure γ} {μ' : Measure δ} [IsFiniteMeasure μ] [IsFiniteMeasure μ']
    {X : γ → α} {X' : δ → α} {Y : γ → β} {Y' : δ → β} (h_indep : IndepFun X Y μ)
    (h_ident : IdentDistrib (fun ω ↦ (X ω, Y ω)) (fun ω ↦ (X' ω, Y' ω)) μ μ') :
    IndepFun X' Y' μ' := by
  rw [indepFun_iff_map_prod_eq_prod_map_map _ _, ← h_ident.map_eq,
    (indepFun_iff_map_prod_eq_prod_map_map _ _).1 h_indep]
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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41181451b5ee29856accadce842ab60e1cf0f37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
