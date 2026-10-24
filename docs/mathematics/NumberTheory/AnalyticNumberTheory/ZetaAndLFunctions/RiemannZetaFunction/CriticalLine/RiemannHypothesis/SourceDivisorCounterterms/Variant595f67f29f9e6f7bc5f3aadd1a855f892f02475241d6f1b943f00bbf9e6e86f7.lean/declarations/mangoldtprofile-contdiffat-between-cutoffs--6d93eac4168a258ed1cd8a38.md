# mangoldtProfile_contDiffAt_between_cutoffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3900cae-ad6a-d0fb-f282-6858886b5f66",
  "kind": "theorem",
  "lexical_name": "mangoldtProfile_contDiffAt_between_cutoffs",
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
  "slug": "mangoldtprofile-contdiffat-between-cutoffs--6d93eac4168a258ed1cd8a38",
  "source": {
    "blob": "099a956ebe2367ba758c456bdd16201b39becd8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variant595f67f29f9e6f7bc5f3aadd1a855f892f02475241d6f1b943f00bbf9e6e86f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d93eac4168a258ed1cd8a38e09cbd7589ae17f6a9ea8155d2eb4a4b2f59b76d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variant595f67f29f9e6f7bc5f3aadd1a855f892f02475241d6f1b943f00bbf9e6e86f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3900cae-ad6a-d0fb-f282-6858886b5f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtProfile_contDiffAt_between_cutoffs {A : ℝ} (hA : 1 ≤ A)
    (hU : (vaughanCutoff A : ℝ) < A ^ 2)
    (hN : (sourceKernelCutoff A : ℝ) < Real.exp (2 * A)) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => mangoldtForwardProfile B x) A := by
  apply (SourceScaleVariation.forwardProfile_contDiffAt_scale
    (by linarith : 0 < A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ)) x).congr_of_eventuallyEq
  filter_upwards [cutoffs_eventually_eq hU hN] with B hB
  simp only [mangoldtForwardProfile, longInventory, hB.1, hB.2]

/-- The original centered reflected state preserves the same C¹ variation between actual events. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variant595f67f29f9e6f7bc5f3aadd1a855f892f02475241d6f1b943f00bbf9e6e86f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variant595f67f29f9e6f7bc5f3aadd1a855f892f02475241d6f1b943f00bbf9e6e86f7.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099a956ebe2367ba758c456bdd16201b39becd8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
