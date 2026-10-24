# condDistrib_fst_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f0e0a7c-aac2-d3ff-571b-8fe33f73e9a0",
  "kind": "lemma",
  "lexical_name": "condDistrib_fst_prod",
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
  "slug": "conddistrib-fst-prod--71d51a1b1943cf411fb7e59f",
  "source": {
    "blob": "c02ff0221be7910d34055afd1a9eae731bbc6905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71d51a1b1943cf411fb7e59fe23d1b8505bf11965306cbe291a42e34203f2a0d",
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

Occurrence: `result:8f0e0a7c-aac2-d3ff-571b-8fe33f73e9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condDistrib_fst_prod {γ : Type*} {mγ : MeasurableSpace γ}
    (hX : AEMeasurable X μ) (hY : AEMeasurable Y μ) (ν : Measure γ) [IsProbabilityMeasure ν] :
    condDistrib (fun ω ↦ Y ω.1) (fun ω ↦ X ω.1) (μ.prod ν) =ᵐ[μ.map X] condDistrib Y X μ := by
  have h_map := condDistrib_map (X := X) (Y := Y) (f := Prod.fst (α := α) (β := γ))
      (ν := μ.prod ν) (mα := inferInstance) (mβ := inferInstance)
      (by simpa) (by simpa) (by fun_prop)
  rw [← AEMeasurable.map_map_of_aemeasurable (by simpa) (by fun_prop)] at h_map
  simp only [Measure.map_fst_prod, measure_univ, one_smul] at h_map
  exact h_map.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c02ff0221be7910d34055afd1a9eae731bbc6905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
