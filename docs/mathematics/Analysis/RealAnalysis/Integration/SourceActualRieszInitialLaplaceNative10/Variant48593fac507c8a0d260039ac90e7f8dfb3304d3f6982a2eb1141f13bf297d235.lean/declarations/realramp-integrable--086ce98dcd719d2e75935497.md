# realRamp_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16c64800-51d2-d36a-adff-e283d003ae77",
  "kind": "theorem",
  "lexical_name": "realRamp_integrable",
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
  "slug": "realramp-integrable--086ce98dcd719d2e75935497",
  "source": {
    "blob": "7a52953f10c02a96f0ebd6dd60ce47456556edab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:086ce98dcd719d2e75935497d0049b0dfc84d461b30348a8eec92221e0eb67a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16c64800-51d2-d36a-adff-e283d003ae77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem realRamp_integrable {σ a : ℝ} (hσ : 0 < σ) (ha : 0 ≤ a) :
    IntegrableOn (fun t : ℝ => max 0 (t - a) * Real.exp (-σ * t)) (Ioi 0) := by
  have hi : IntegrableOn (fun t : ℝ => max 0 (t - a) * Real.exp (-σ * t))
      (Ioi a) := (realRamp_tail_integrable hσ a).congr_fun
    (fun t ht => by dsimp only; rw [max_eq_right (sub_nonneg.mpr ht.le)]) measurableSet_Ioi
  have hlo := zeroOn_lower_integrable (f := fun t : ℝ =>
    max 0 (t - a) * Real.exp (-σ * t)) (fun t ht => by
      rw [max_eq_left (sub_nonpos.mpr ht.2), zero_mul])
  simpa only [Ioc_union_Ioi_eq_Ioi ha] using hlo.union hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a52953f10c02a96f0ebd6dd60ce47456556edab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
