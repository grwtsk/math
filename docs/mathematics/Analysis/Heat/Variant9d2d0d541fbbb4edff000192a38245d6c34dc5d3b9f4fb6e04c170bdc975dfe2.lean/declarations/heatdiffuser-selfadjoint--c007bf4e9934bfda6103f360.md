# heatDiffuser_selfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85b3f4ce-f87f-fcb5-2ab7-b6cdaa42b4c1",
  "kind": "theorem",
  "lexical_name": "heatDiffuser_selfAdjoint",
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
  "slug": "heatdiffuser-selfadjoint--c007bf4e9934bfda6103f360",
  "source": {
    "blob": "cc53ab99a884e3d8b5a072a5879eb5235041bdd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 53,
    "path": "GRWTSK/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c007bf4e9934bfda6103f360d34a6673bc6d828fcbe9ce42a26787f06e79a509",
  "verification": {
    "reference": "docs/verification/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85b3f4ce-f87f-fcb5-2ab7-b6cdaa42b4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatDiffuser_selfAdjoint
    {dirac : FiniteOperator Index Index}
    (hermitian : dirac.IsHermitian)
    (s : ℝ) :
    (heatDiffuser dirac s).IsHermitian :=
  (heatGenerator_isHermitian hermitian s).exp

/-- The finite heat family obeys the exact semigroup law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc53ab99a884e3d8b5a072a5879eb5235041bdd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
