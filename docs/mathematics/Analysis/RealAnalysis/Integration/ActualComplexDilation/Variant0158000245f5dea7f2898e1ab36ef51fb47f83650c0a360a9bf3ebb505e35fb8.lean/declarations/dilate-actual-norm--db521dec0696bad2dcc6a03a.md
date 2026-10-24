# dilate_actual_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af0ebd5b-0c6c-b728-dbd8-04075ba27e89",
  "kind": "theorem",
  "lexical_name": "dilate_actual_norm",
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
  "slug": "dilate-actual-norm--db521dec0696bad2dcc6a03a",
  "source": {
    "blob": "abcc8ac7564f6bdcd9384c5b0d4467c50b1a7939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db521dec0696bad2dcc6a03af21f680a5b6f46d00a8ed4fab4c06f2c7b84f93d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af0ebd5b-0c6c-b728-dbd8-04075ba27e89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_actual_norm (A : ℝ) (hA : 1 ≤ A) (a : ℝ) (ha : 0 < a) :
    ‖dilate a ha (actualComplexL2 A hA)‖ = ‖actualComplexL2 A hA‖ :=
  dilate_norm a ha (actualComplexL2 A hA)

/-- Integer orbits use exactly positive natural dilations, distinct from arbitrary a>0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abcc8ac7564f6bdcd9384c5b0d4467c50b1a7939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
