# triangleKernel_inner_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e76e18c5-e484-8529-7344-c4720ef9f119",
  "kind": "theorem",
  "lexical_name": "triangleKernel_inner_eq",
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
  "slug": "trianglekernel-inner-eq--c4a41c4ff8eb8decaa2f77bb",
  "source": {
    "blob": "554eed563f1565c0bd8d45af80d979ceb4ff8d80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4a41c4ff8eb8decaa2f77bbd5747564e498356fbe45b46aa4b4141c078d5e97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e76e18c5-e484-8529-7344-c4720ef9f119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangleKernel_inner_eq {t : ℝ} (ht : 0 < t) :
    (∫ u in Ioi (0:ℝ), triangleKernel (t,u)) = psiErrorTail t := by
  have he : (fun u : ℝ => triangleKernel (t,u)) =
      (Ioi t).indicator psiRelativeError := by
    funext u
    simp only [triangleKernel, ht, true_and, mem_Ioi, indicator_apply]
  rw [he, integral_indicator measurableSet_Ioi,
    Measure.restrict_restrict measurableSet_Ioi]
  have hs : Ioi t ∩ Ioi (0:ℝ) = Ioi t :=
    inter_eq_left.mpr (Ioi_subset_Ioi ht.le)
  rw [hs]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554eed563f1565c0bd8d45af80d979ceb4ff8d80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
