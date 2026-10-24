# completeXiTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10ca6f597d5c8dc0fc3179855ca7c1c0ea228a688e1d9367d615e321c22bc23a",
  "kind": "def",
  "lexical_name": "completeXiTail",
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
  "slug": "completexitail--7847d9269dce485c6a2af22c",
  "source": {
    "blob": "9ea40eb2582ea701e6ddf0a20c7641cfbe2e042e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi/Variant9713cbed7647e3364eb36befb35ca2f3c8f6e3dea7a9f8432bf600d2975854ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7847d9269dce485c6a2af22cbf14c02a409dbaefae0c2d666a7149922d42b31b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi/Variant9713cbed7647e3364eb36befb35ca2f3c8f6e3dea7a9f8432bf600d2975854ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10ca6f597d5c8dc0fc3179855ca7c1c0ea228a688e1d9367d615e321c22bc23a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completeXiTail (A : ℝ) : ℝ :=
  ∫ y in 7..Real.exp (2 * A), actualTransformedXiBlockDensity A y

/-- The fixed front is paid once; the positive eta margin is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi/Variant9713cbed7647e3364eb36befb35ca2f3c8f6e3dea7a9f8432bf600d2975854ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi/Variant9713cbed7647e3364eb36befb35ca2f3c8f6e3dea7a9f8432bf600d2975854ae.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea40eb2582ea701e6ddf0a20c7641cfbe2e042e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
