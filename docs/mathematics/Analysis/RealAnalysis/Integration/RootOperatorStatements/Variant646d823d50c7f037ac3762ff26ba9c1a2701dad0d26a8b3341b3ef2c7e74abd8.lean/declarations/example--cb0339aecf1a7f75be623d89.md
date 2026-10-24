# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:419a201bb58a4075d8f2a71a1f1fa280798015540c0e5c761a8071c0d11b41ac",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--cb0339aecf1a7f75be623d89",
  "source": {
    "blob": "eaeb7f73fad1480758e155dde57f130ca597d370",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 625,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorStatements/Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb0339aecf1a7f75be623d899ad76617c0e7b6b6ebf1c9bab1cdd3dd686f155c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootOperatorStatements/Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:419a201bb58a4075d8f2a71a1f1fa280798015540c0e5c761a8071c0d11b41ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (α : ℝ) (hα : 0 < α) : Real.exp ((1 - diagonalCutoff α) / 2) ≤ α ^ 2 := diagonal_exp_le α hα
-- 59
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootOperatorStatements/Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorStatements/Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaeb7f73fad1480758e155dde57f130ca597d370` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
