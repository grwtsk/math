# jointProfileProduct_contDiffAt_between_cutoffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a64f25ad-adaf-f991-6d56-bbcb670b695a",
  "kind": "theorem",
  "lexical_name": "jointProfileProduct_contDiffAt_between_cutoffs",
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
  "slug": "jointprofileproduct-contdiffat-between-cutoffs--891012e3d9ef99204b65bd25",
  "source": {
    "blob": "29c5c9a14769e92846bf72ff2a71a4f985d96d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 216,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891012e3d9ef99204b65bd25d961ff0589cec0c82b4c963d6c9eee1ab7ef6eb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a64f25ad-adaf-f991-6d56-bbcb670b695a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointProfileProduct_contDiffAt_between_cutoffs {A : ℝ} (hA : 1 ≤ A)
    (hU : (vaughanCutoff A : ℝ) < A ^ 2)
    (hN : (sourceKernelCutoff A : ℝ) < Real.exp (2 * A)) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => mangoldtForwardProfile B x *
      centeredMobiusReflectedProfile B x) A :=
  (mangoldtProfile_contDiffAt_between_cutoffs hA hU hN x).mul
    (centeredProfile_contDiffAt_between_cutoffs hA hU hN x)

/-- The exact unresolved divisor inequality, retaining the full independent global baseline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29c5c9a14769e92846bf72ff2a71a4f985d96d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
