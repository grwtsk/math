# lowestEigenvalue_nonvanishing_iff_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f152e8c4-c79f-9aa1-57d0-c9905d992b70",
  "kind": "theorem",
  "lexical_name": "lowestEigenvalue_nonvanishing_iff_positive",
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
  "slug": "lowesteigenvalue-nonvanishing-iff-positive--265d2fb734d504fdf575ba62",
  "source": {
    "blob": "9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:265d2fb734d504fdf575ba62de42a8410264e982629e2a5b7680a74a6991dbd8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f152e8c4-c79f-9aa1-57d0-c9905d992b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowestEigenvalue_nonvanishing_iff_positive {ell : ℝ → ℝ}
    (hell : LowestEigenvalueProfile ell) :
    NonvanishingOnPositive ell ↔ (∀ a : ℝ, 0 < a → 0 < ell a) :=
  (positive_everywhere_iff_nonvanishing hell.1 hell.2).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
