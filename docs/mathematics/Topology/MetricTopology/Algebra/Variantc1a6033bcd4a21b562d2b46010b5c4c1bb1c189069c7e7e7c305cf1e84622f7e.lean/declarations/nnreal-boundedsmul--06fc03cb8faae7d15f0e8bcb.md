# NNReal.boundedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:230a001411d15434168377e78cea576503c3d0bf39a59069e912d08c1466bd92",
  "kind": "instance",
  "lexical_name": "NNReal.boundedSMul",
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
  "slug": "nnreal-boundedsmul--06fc03cb8faae7d15f0e8bcb",
  "source": {
    "blob": "43ca2c9bf5cb4b9197b552ee55a8c556fd77e38d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 178,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06fc03cb8faae7d15f0e8bcb8da65ed884c3c4b470dee8667f65426216eb73d0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:230a001411d15434168377e78cea576503c3d0bf39a59069e912d08c1466bd92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NNReal.boundedSMul : BoundedSMul ℝ≥0 ℝ≥0 where
  dist_smul_pair' x y₁ y₂ := by convert dist_smul_pair (x : ℝ) (y₁ : ℝ) y₂ using 1
  dist_pair_smul' x₁ x₂ y := by convert dist_pair_smul (x₁ : ℝ) x₂ (y : ℝ) using 1
#align nnreal.has_bounded_smul NNReal.boundedSMul

/-- If a scalar is central, then its right action is bounded when its left action is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43ca2c9bf5cb4b9197b552ee55a8c556fd77e38d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
