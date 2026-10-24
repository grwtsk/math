# positive_interiors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63410e26-0d11-452a-3b43-c53503d8b418",
  "kind": "theorem",
  "lexical_name": "positive_interiors",
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
  "slug": "positive-interiors--8137547106aa8a3ee56171ee",
  "source": {
    "blob": "70c0e1f63656b7c3f1dac1b6b16c0c6a336bb6f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variant0072e18083b437b0d59ada9936617337e4cd4f6dc1ed884ab0339cff481a2286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8137547106aa8a3ee56171eed7516e2dba47ebafc530a6e0863a8846d1261628",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variant0072e18083b437b0d59ada9936617337e4cd4f6dc1ed884ab0339cff481a2286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63410e26-0d11-452a-3b43-c53503d8b418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_interiors {k : ℕ} (hk : 0 < k) {x : ℝ}
    (hx : x ∈ Set.Ioo (0 : ℝ) 1) : 0 < concentrated k x ∧ 0 < broad k x := by
  have hx0 := hx.1
  have hx1 := hx.2
  have hbase : 0 < 4 * x * (1 - x) := by positivity
  have hsq : (2 * x - 1) ^ 2 < 1 := by
    nlinarith [mul_pos hx.1 (sub_pos.mpr hx.2)]
  constructor
  · exact pow_pos hbase k
  · unfold broad
    rw [pow_mul]
    exact sub_pos.mpr (pow_lt_one₀ (sq_nonneg _) hsq hk.ne')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variant0072e18083b437b0d59ada9936617337e4cd4f6dc1ed884ab0339cff481a2286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variant0072e18083b437b0d59ada9936617337e4cd4f6dc1ed884ab0339cff481a2286.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c0e1f63656b7c3f1dac1b6b16c0c6a336bb6f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
