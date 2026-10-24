# hasStrictFDerivAt_intCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e1df62c-14c4-adf1-1a92-a82dc545d455",
  "kind": "theorem",
  "lexical_name": "hasStrictFDerivAt_intCast",
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
  "slug": "hasstrictfderivat-intcast--b5bbbed613d38a9b6467ca4d",
  "source": {
    "blob": "90e409f079997ddf30bb47f0624a2706b03a034f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1105,
    "line": 1102,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8399dfd0a3327b7aab0f648ef37fd2e0580cb637f79f0437be6962f86e43ade0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5bbbed613d38a9b6467ca4d14f88faecd85985e720d4cb8cd6f8329249fd8c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8399dfd0a3327b7aab0f648ef37fd2e0580cb637f79f0437be6962f86e43ade0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e1df62c-14c4-adf1-1a92-a82dc545d455`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1102–1105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrictFDerivAt_intCast [IntCast F] (z : ℤ) (x : E) :
    HasStrictFDerivAt (z : E → F) (0 : E →L[𝕜] F) x := hasStrictFDerivAt_const _ _

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8399dfd0a3327b7aab0f648ef37fd2e0580cb637f79f0437be6962f86e43ade0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8399dfd0a3327b7aab0f648ef37fd2e0580cb637f79f0437be6962f86e43ade0.lean#L1102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90e409f079997ddf30bb47f0624a2706b03a034f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
