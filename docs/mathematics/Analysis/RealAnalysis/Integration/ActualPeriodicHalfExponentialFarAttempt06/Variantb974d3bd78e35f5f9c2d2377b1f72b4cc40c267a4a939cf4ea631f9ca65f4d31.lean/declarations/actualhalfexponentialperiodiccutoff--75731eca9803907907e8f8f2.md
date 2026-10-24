# actualHalfExponentialPeriodicCutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b92b9232b79c5e356065b197b987dad3510f7121a6de78856e88459cfe80d2b9",
  "kind": "def",
  "lexical_name": "actualHalfExponentialPeriodicCutoff",
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
  "slug": "actualhalfexponentialperiodiccutoff--75731eca9803907907e8f8f2",
  "source": {
    "blob": "2368546cb75a02c305b369e32001ebd846dcb6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variantb974d3bd78e35f5f9c2d2377b1f72b4cc40c267a4a939cf4ea631f9ca65f4d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75731eca9803907907e8f8f2cc55757ca18c006b300613e623b932542bf9eaaa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variantb974d3bd78e35f5f9c2d2377b1f72b4cc40c267a4a939cf4ea631f9ca65f4d31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b92b9232b79c5e356065b197b987dad3510f7121a6de78856e88459cfe80d2b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualHalfExponentialPeriodicCutoff (A : ℝ) : ℝ := Real.exp (A / 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variantb974d3bd78e35f5f9c2d2377b1f72b4cc40c267a4a939cf4ea631f9ca65f4d31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variantb974d3bd78e35f5f9c2d2377b1f72b4cc40c267a4a939cf4ea631f9ca65f4d31.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2368546cb75a02c305b369e32001ebd846dcb6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
