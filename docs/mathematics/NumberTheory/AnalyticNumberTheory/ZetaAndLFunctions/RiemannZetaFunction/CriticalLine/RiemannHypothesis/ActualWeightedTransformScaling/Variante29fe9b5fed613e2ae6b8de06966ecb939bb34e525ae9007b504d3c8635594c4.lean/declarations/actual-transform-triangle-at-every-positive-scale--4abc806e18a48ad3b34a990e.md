# actual_transform_triangle_at_every_positive_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:717c86be-9a5f-a248-7621-4e3f3cc30405",
  "kind": "theorem",
  "lexical_name": "actual_transform_triangle_at_every_positive_scale",
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
  "slug": "actual-transform-triangle-at-every-positive-scale--4abc806e18a48ad3b34a990e",
  "source": {
    "blob": "2dd3e1a8d1c5afa665b4fc5b07134ceb0c0b7672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variante29fe9b5fed613e2ae6b8de06966ecb939bb34e525ae9007b504d3c8635594c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4abc806e18a48ad3b34a990e423a12c6cc33cf3d75512697a6b246cf71a4e6b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variante29fe9b5fed613e2ae6b8de06966ecb939bb34e525ae9007b504d3c8635594c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:717c86be-9a5f-a248-7621-4e3f3cc30405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transform_triangle_at_every_positive_scale {A a Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) (J : ℝ → ℝ)
    (hJ : ∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) :
    |transformAt A J Z| ≤ Z ^ a * normPrice A (a + 3 / 16) := by
  rw [exact_native_scale_pullback hZ A a J, abs_mul,
    abs_of_pos (Real.rpow_pos_of_pos hZ a)]
  exact mul_le_mul_of_nonneg_left (actual_native_transform_triangle_bound hA
    (pullInput a Z J) (scale_pullback_retains_magnitude_class hZ J hJ))
    (Real.rpow_nonneg hZ.le a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variante29fe9b5fed613e2ae6b8de06966ecb939bb34e525ae9007b504d3c8635594c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variante29fe9b5fed613e2ae6b8de06966ecb939bb34e525ae9007b504d3c8635594c4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dd3e1a8d1c5afa665b4fc5b07134ceb0c0b7672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
