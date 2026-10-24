# negativeCurvatureWork_integrand_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe51c35d-b640-3169-ca38-c94deb6665c3",
  "kind": "theorem",
  "lexical_name": "negativeCurvatureWork_integrand_intervalIntegrable",
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
  "slug": "negativecurvaturework-integrand-intervalintegrable--f4b453ff5bc2a4d216543fd8",
  "source": {
    "blob": "24f334381c33aaedbc3861cd308c83fdab65a596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4b453ff5bc2a4d216543fd885546c16310a99518a65d84dd40a74235bde5bf1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe51c35d-b640-3169-ca38-c94deb6665c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeCurvatureWork_integrand_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun u =>
      max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0)
      volume 0 (2*A) := by
  have hi := actual_bridge_curvature_intervalIntegrable hA
  apply ((hi.abs.sub hi).div_const 2).congr
  intro u _
  dsimp only
  by_cases h : 0 ≤ criticalDiscrepancyBridge A u*pairedTailCurvature A u
  · rw [abs_of_nonneg h,max_eq_right (neg_nonpos.mpr h)]
    ring
  · have h' := le_of_not_ge h
    rw [abs_of_nonpos h',max_eq_left (neg_nonneg.mpr h')]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24f334381c33aaedbc3861cd308c83fdab65a596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
