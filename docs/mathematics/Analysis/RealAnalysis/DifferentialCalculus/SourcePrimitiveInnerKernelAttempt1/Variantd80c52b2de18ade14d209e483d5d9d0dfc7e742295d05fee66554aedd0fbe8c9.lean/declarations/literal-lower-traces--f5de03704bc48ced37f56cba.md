# literal_lower_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b607784-135e-fb81-1ee7-46b097a771e1",
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
  "slug": "literal-lower-traces--f5de03704bc48ced37f56cba",
  "source": {
    "blob": "fcb84574f61bff02cc4e6b4412c0313c339269f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variantd80c52b2de18ade14d209e483d5d9d0dfc7e742295d05fee66554aedd0fbe8c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5de03704bc48ced37f56cba05e596cf088cd64c19f4a2db283bfbf31dc828ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variantd80c52b2de18ade14d209e483d5d9d0dfc7e742295d05fee66554aedd0fbe8c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b607784-135e-fb81-1ee7-46b097a771e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variantd80c52b2de18ade14d209e483d5d9d0dfc7e742295d05fee66554aedd0fbe8c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variantd80c52b2de18ade14d209e483d5d9d0dfc7e742295d05fee66554aedd0fbe8c9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcb84574f61bff02cc4e6b4412c0313c339269f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
