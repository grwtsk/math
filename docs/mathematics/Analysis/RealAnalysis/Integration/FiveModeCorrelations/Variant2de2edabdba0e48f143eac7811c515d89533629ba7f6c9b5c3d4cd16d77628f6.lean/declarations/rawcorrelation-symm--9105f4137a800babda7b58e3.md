# rawCorrelation_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4ef1331-dbae-8009-a954-9523c9b5384a",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_symm",
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
  "slug": "rawcorrelation-symm--9105f4137a800babda7b58e3",
  "source": {
    "blob": "edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 371,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9105f4137a800babda7b58e39750af2cb28de858a477fdd320e8c13216a7e568",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4ef1331-dbae-8009-a954-9523c9b5384a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_symm (i j : Fin 5) (h : ℝ) :
    rawCorrelation i j h = rawCorrelation j i h := by
  have change := intervalIntegral.integral_comp_sub_left
    (fun y : ℝ => mode i y * mode j (y-h)) (a := h-1) (b := 1) h
  have hb : h - (h-1) = 1 := by ring
  rw [hb] at change
  unfold rawCorrelation
  rw [← change]
  apply intervalIntegral.integral_congr
  intro y _
  have hi : mode i (h-y) = mode i (y-h) := by
    rw [show h-y = -(y-h) by ring, mode_even]
  have hj : mode j (h-y-h) = mode j y := by
    rw [show h-y-h = -y by ring, mode_even]
  dsimp only
  rw [hi, hj, mul_comm]

/-- Touching interval endpoints contribute exactly zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
