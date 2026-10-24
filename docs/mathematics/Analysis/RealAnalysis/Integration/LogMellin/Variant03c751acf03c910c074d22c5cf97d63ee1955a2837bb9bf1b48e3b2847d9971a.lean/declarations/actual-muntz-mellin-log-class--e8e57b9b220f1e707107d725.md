# actual_muntz_mellin_log_class

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:268da39b-a4b0-59c3-811f-9f843cfa7c1f",
  "kind": "theorem",
  "lexical_name": "actual_muntz_mellin_log_class",
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
  "slug": "actual-muntz-mellin-log-class--e8e57b9b220f1e707107d725",
  "source": {
    "blob": "4709fde7db5712c4c6690b92be3b8a4eaa205522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8e57b9b220f1e707107d7259516ef63a735b9b195dd027e89a3d85493725982",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:268da39b-a4b0-59c3-811f-9f843cfa7c1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_muntz_mellin_log_class (A : ℝ) (hA : 1 ≤ A) (ξ : ℝ) :
    mellin (complexMuntz A) ((1:ℂ)/2+Complex.I*(ξ:ℂ)) =
      angularIntegral (actualLogL2 A hA) ξ := by
  rw [actual_muntz_mellin_log]
  apply integral_congr_ae
  filter_upwards [actualLogL2_ae A hA] with u hu
  rw [hu]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4709fde7db5712c4c6690b92be3b8a4eaa205522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
