# literal_lower_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d85da4-5fec-5b1e-3c85-55eb3425b8db",
  "kind": "theorem",
  "lexical_name": "literal_lower_traces",
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
  "slug": "literal-lower-traces--f85407ee3c95de44d0b3b3e4",
  "source": {
    "blob": "ffc0933b99c00878169605bd2c7cea0bb2562bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3af47e457a42a8d368cbSourcePrimitiveInnerKernel/Variant7fbdbcbbaa02462eb92aac85e12d580f0050835de3d43c8015814e8bc8efaa3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f85407ee3c95de44d0b3b3e4d4b8a8f209863a8c2d6c2fef9ad12d6e6605b315",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3af47e457a42a8d368cbSourcePrimitiveInnerKernel/Variant7fbdbcbbaa02462eb92aac85e12d580f0050835de3d43c8015814e8bc8efaa3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d85da4-5fec-5b1e-3c85-55eb3425b8db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_lower_traces (y : ℝ) (hy : 0 < y) :
    literalXiWeight (Real.log y) y = 0 ∧
      timeFirst (Real.log y) y = Real.exp (Real.log y / 2) / y ^ 2 := by
  have hc := positive_power_coefficient y hy
  constructor
  · unfold literalXiWeight
    simp only [sub_self, zero_add]
    linear_combination -4 * hc
  · unfold timeFirst
    linear_combination -hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3af47e457a42a8d368cbSourcePrimitiveInnerKernel/Variant7fbdbcbbaa02462eb92aac85e12d580f0050835de3d43c8015814e8bc8efaa3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3af47e457a42a8d368cbSourcePrimitiveInnerKernel/Variant7fbdbcbbaa02462eb92aac85e12d580f0050835de3d43c8015814e8bc8efaa3a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc0933b99c00878169605bd2c7cea0bb2562bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
