# independentMainTermDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:013cba6fe8487b820dab266c9dde460655e24858eb701348d22dbdf4fe2fcfd7",
  "kind": "def",
  "lexical_name": "independentMainTermDerivative",
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
  "slug": "independentmaintermderivative--d83bfab3d2c5f1742f867f64",
  "source": {
    "blob": "144885a75cec00084ccaa289a7a254951990c0f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 307,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variant78d7fd00ac72ec01e88d5f71a16d34f8ff1d33ab1c141c7ba41e55feb35cc71f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d83bfab3d2c5f1742f867f64548bf1477b53615b0825767f4609e2d9fc66c68e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variant78d7fd00ac72ec01e88d5f71a16d34f8ff1d33ab1c141c7ba41e55feb35cc71f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:013cba6fe8487b820dab266c9dde460655e24858eb701348d22dbdf4fe2fcfd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def independentMainTermDerivative (A : ℝ) : ℝ :=
  mainTermDerivativeAt A (vaughanCutoff A) (sourceKernelCutoff A)

/-- Genuine derivative of the independently defined M at each regular scale above one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variant78d7fd00ac72ec01e88d5f71a16d34f8ff1d33ab1c141c7ba41e55feb35cc71f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variant78d7fd00ac72ec01e88d5f71a16d34f8ff1d33ab1c141c7ba41e55feb35cc71f.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `144885a75cec00084ccaa289a7a254951990c0f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
