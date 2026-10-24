# condDistrib_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0107663-d2ef-4344-7e88-60e0fbcb97c7",
  "kind": "lemma",
  "lexical_name": "condDistrib_map",
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
  "slug": "conddistrib-map--7ba23c1cf399cba6ab5f02d6",
  "source": {
    "blob": "c02ff0221be7910d34055afd1a9eae731bbc6905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ba23c1cf399cba6ab5f02d62d3b5fd425a8ffddf24ba0620a9d18ef52e38807",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0107663-d2ef-4344-7e88-60e0fbcb97c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condDistrib_map {γ : Type*} {mγ : MeasurableSpace γ}
    {ν : Measure γ} [IsFiniteMeasure ν] {f : γ → α}
    (hX : AEMeasurable X (ν.map f)) (hY : AEMeasurable Y (ν.map f)) (hf : AEMeasurable f ν) :
    condDistrib Y X (ν.map f) =ᵐ[ν.map (X ∘ f)] condDistrib (Y ∘ f) (X ∘ f) ν := by
  rw [← AEMeasurable.map_map_of_aemeasurable hX hf]
  refine condDistrib_ae_eq_of_measure_eq_compProd (μ := ν.map f) hX hY ?_
  rw [AEMeasurable.map_map_of_aemeasurable hX hf,
    compProd_map_condDistrib (by fun_prop) (by fun_prop),
    AEMeasurable.map_map_of_aemeasurable (by fun_prop) hf]
  simp [Function.comp_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c02ff0221be7910d34055afd1a9eae731bbc6905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
