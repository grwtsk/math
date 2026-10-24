# actualMuntzL2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad191f0b679d4ca04a006b2bf6f27bf8140d1c26023dffecdf1d545b719ca579",
  "kind": "def",
  "lexical_name": "actualMuntzL2",
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
  "slug": "actualmuntzl2--633ebb20b8cdcd4903671e41",
  "source": {
    "blob": "8e252ca47e6a88b3e665b276e2c256cafcfa7b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variant61d5f141881f74211ae4b820ad901c96ecb51dcf83a226582b7eb5e7aeb7dc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:633ebb20b8cdcd4903671e418b638bfede609da3a44c3f3b7038431df5d7ba6c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variant61d5f141881f74211ae4b820ad901c96ecb51dcf83a226582b7eb5e7aeb7dc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad191f0b679d4ca04a006b2bf6f27bf8140d1c26023dffecdf1d545b719ca579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualMuntzL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℝ 2 (volume.restrict (Set.Ioi (0:ℝ))) :=
  (actualMuntz_memLp_positive hA).toLp (actualMuntz A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variant61d5f141881f74211ae4b820ad901c96ecb51dcf83a226582b7eb5e7aeb7dc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variant61d5f141881f74211ae4b820ad901c96ecb51dcf83a226582b7eb5e7aeb7dc4a.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e252ca47e6a88b3e665b276e2c256cafcfa7b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
