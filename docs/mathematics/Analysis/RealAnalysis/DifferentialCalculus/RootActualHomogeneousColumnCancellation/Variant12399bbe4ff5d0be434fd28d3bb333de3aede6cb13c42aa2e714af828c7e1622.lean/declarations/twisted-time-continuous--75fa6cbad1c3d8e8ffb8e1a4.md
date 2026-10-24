# twisted_time_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f42bfff2-1949-cb31-5f3e-5ee4708c67b4",
  "kind": "theorem",
  "lexical_name": "twisted_time_continuous",
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
  "slug": "twisted-time-continuous--75fa6cbad1c3d8e8ffb8e1a4",
  "source": {
    "blob": "ac24f347960fce57dffa4d6ec298d85029495e5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variant12399bbe4ff5d0be434fd28d3bb333de3aede6cb13c42aa2e714af828c7e1622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75fa6cbad1c3d8e8ffb8e1a4d60dc0b9d2c3499fecf9beb543a76db29815e31b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variant12399bbe4ff5d0be434fd28d3bb333de3aede6cb13c42aa2e714af828c7e1622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f42bfff2-1949-cb31-5f3e-5ee4708c67b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem twisted_time_continuous {A : ℝ} (hA : 0 < A) (s : ℝ) :
    Continuous (fun t => actualTwistedTimeDensity A t s) := by
  have h1 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 1
    (by norm_num)
  have h3 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 3
    (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variant12399bbe4ff5d0be434fd28d3bb333de3aede6cb13c42aa2e714af828c7e1622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variant12399bbe4ff5d0be434fd28d3bb333de3aede6cb13c42aa2e714af828c7e1622.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac24f347960fce57dffa4d6ec298d85029495e5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
