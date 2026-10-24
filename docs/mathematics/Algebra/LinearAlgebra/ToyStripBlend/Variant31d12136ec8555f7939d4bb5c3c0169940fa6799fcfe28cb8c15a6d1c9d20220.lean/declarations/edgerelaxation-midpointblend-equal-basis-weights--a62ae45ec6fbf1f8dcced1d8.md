# EdgeRelaxation.midpointBlend_equal_basis_weights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fca46d4-2635-cf5a-6798-299ee579a6a8",
  "kind": "theorem",
  "lexical_name": "EdgeRelaxation.midpointBlend_equal_basis_weights",
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
  "slug": "edgerelaxation-midpointblend-equal-basis-weights--a62ae45ec6fbf1f8dcced1d8",
  "source": {
    "blob": "23389fd5809611e29e06a9d7321a3dc50dae3b8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 266,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a62ae45ec6fbf1f8dcced1d84418c7fef43b60fa6d05361d95fcb4e5f9eee14f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fca46d4-2635-cf5a-6798-299ee579a6a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EdgeRelaxation.midpointBlend_equal_basis_weights :
    EdgeRelaxation.evalAtHalf
        EdgeRelaxation.EpsilonDensity.oneMinusEps =
      EdgeRelaxation.evalAtHalf
        EdgeRelaxation.EpsilonDensity.eps := by
  decide

/-- Sum three half-integer values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23389fd5809611e29e06a9d7321a3dc50dae3b8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
