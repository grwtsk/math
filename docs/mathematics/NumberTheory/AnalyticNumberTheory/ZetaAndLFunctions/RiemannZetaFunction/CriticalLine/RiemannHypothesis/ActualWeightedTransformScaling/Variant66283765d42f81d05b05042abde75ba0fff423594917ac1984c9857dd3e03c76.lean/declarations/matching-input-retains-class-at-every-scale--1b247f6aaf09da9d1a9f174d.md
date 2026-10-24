# matching_input_retains_class_at_every_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef6ba66e-06db-ea54-8ca9-c42d23adebe2",
  "kind": "theorem",
  "lexical_name": "matching_input_retains_class_at_every_scale",
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
  "slug": "matching-input-retains-class-at-every-scale--1b247f6aaf09da9d1a9f174d",
  "source": {
    "blob": "36029b6bf95572b94af63101400e50d54765f699",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variant66283765d42f81d05b05042abde75ba0fff423594917ac1984c9857dd3e03c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b247f6aaf09da9d1a9f174db3a082853658deceb917e8c7c31d0244265c0555",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variant66283765d42f81d05b05042abde75ba0fff423594917ac1984c9857dd3e03c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef6ba66e-06db-ea54-8ca9-c42d23adebe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matching_input_retains_class_at_every_scale {Z : ℝ} (hZ : 0 < Z) (A a : ℝ) :
    ∀ x : ℝ, 0 < x → |inputAt A a Z x| ≤ x ^ a := by
  intro x hx
  have hZa := Real.rpow_pos_of_pos hZ a
  unfold inputAt
  rw [abs_mul, abs_of_pos hZa]
  calc
    _ ≤ Z ^ a * (x / Z) ^ a :=
      mul_le_mul_of_nonneg_left
        (matching_input_keeps_the_complete_magnitude_bound A a (div_pos hx hZ)) hZa.le
    _ = x ^ a := by rw [Real.div_rpow hx.le hZ.le]; field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variant66283765d42f81d05b05042abde75ba0fff423594917ac1984c9857dd3e03c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variant66283765d42f81d05b05042abde75ba0fff423594917ac1984c9857dd3e03c76.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36029b6bf95572b94af63101400e50d54765f699` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
