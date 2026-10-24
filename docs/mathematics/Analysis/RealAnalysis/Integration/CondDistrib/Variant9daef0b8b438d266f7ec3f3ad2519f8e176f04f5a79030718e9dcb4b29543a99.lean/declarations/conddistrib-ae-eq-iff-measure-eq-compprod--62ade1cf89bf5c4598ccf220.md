# condDistrib_ae_eq_iff_measure_eq_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e05cb5a-4988-8358-a718-cb16587bf5f0",
  "kind": "lemma",
  "lexical_name": "condDistrib_ae_eq_iff_measure_eq_compProd",
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
  "slug": "conddistrib-ae-eq-iff-measure-eq-compprod--62ade1cf89bf5c4598ccf220",
  "source": {
    "blob": "c02ff0221be7910d34055afd1a9eae731bbc6905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62ade1cf89bf5c4598ccf2209d487a73716069506b6c6a934b7db1fe796fc588",
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

Occurrence: `result:5e05cb5a-4988-8358-a718-cb16587bf5f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condDistrib_ae_eq_iff_measure_eq_compProd
    (hX : AEMeasurable X μ) (hY : AEMeasurable Y μ) (κ : Kernel β Ω) [IsFiniteKernel κ] :
    (condDistrib Y X μ =ᵐ[μ.map X] κ) ↔ μ.map (fun x => (X x, Y x)) = μ.map X ⊗ₘ κ := by
  refine ⟨fun h ↦ ?_, condDistrib_ae_eq_of_measure_eq_compProd hX hY⟩
  rw [Measure.compProd_congr h.symm, compProd_map_condDistrib hX hY]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant9daef0b8b438d266f7ec3f3ad2519f8e176f04f5a79030718e9dcb4b29543a99.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c02ff0221be7910d34055afd1a9eae731bbc6905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
