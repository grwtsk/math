# compensatedAbelDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e1b4e6-a006-ddd1-ba9b-516a5164128e",
  "kind": "theorem",
  "lexical_name": "compensatedAbelDensity_intervalIntegrable",
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
  "slug": "compensatedabeldensity-intervalintegrable--208f172196fb87c0300d8277",
  "source": {
    "blob": "8b13ed25b500fba6c99cb6b160e2299019060dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 371,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:208f172196fb87c0300d8277b1897e67594df78c3458587a1bfc55788def0caf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e1b4e6-a006-ddd1-ba9b-516a5164128e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedAbelDensity_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun s => compensatedPrefix (Real.exp s) *
      Real.exp (-s / 2) * kapitzaKernel A s) volume 0 (2 * A) := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hf : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hd : deriv F = fun s => -Real.exp (-s / 2) * kapitzaKernel A s := by
    ext s
    rw [exponentialTest_deriv C hc]
    dsimp [kapitzaKernel, C]
    ring
  apply (compensatedPrefix_mul_deriv_intervalIntegrable (2 * A) (by linarith) F hf).neg.congr
  intro s _
  change -(compensatedPrefix (Real.exp s) * deriv F s) = _
  rw [hd]
  ring

/-- A common moving spatial window commutes with every literal translation atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b13ed25b500fba6c99cb6b160e2299019060dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
