# shiftedColumnTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bb023080318a7f36c0821d49a8b5ec55f5526bd2e1439d69fab51f8de2fa787",
  "kind": "def",
  "lexical_name": "shiftedColumnTest",
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
  "slug": "shiftedcolumntest--4d0777da67e2f64797ed2444",
  "source": {
    "blob": "16801a50ce57f05b75cf9953ce70d9decddd2ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d0777da67e2f64797ed2444395dd358aa336b1b1f7e7074969fd317ab8cdb4a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bb023080318a7f36c0821d49a8b5ec55f5526bd2e1439d69fab51f8de2fa787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def shiftedColumnTest (A : ℝ) (k : ℕ) (t : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt (k : ℝ) *
    sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16801a50ce57f05b75cf9953ce70d9decddd2ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
