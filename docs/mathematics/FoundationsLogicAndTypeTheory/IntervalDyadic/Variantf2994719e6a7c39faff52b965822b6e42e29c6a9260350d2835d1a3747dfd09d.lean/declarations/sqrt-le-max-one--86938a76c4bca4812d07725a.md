# sqrt_le_max_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ef7a146-6904-5b98-0b8d-7adc4dca898c",
  "kind": "theorem",
  "lexical_name": "sqrt_le_max_one",
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
  "slug": "sqrt-le-max-one--86938a76c4bca4812d07725a",
  "source": {
    "blob": "e5a64315b8c4caa8dbcd5acb7761d9ad740f1572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 496,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86938a76c4bca4812d07725ada1b5521c9e7ba9f1c2aea6fa24fc3274c4a3b5c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ef7a146-6904-5b98-0b8d-7adc4dca898c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sqrt_le_max_one {x : ℝ} (hx : 0 ≤ x) : Real.sqrt x ≤ max x 1 := by
  by_cases! h : x ≤ 1
  · -- Case x ≤ 1: sqrt(x) ≤ 1 ≤ max(x, 1)
    -- sqrt(x) ≤ 1 when x ≤ 1 because sqrt(x)^2 = x ≤ 1 and sqrt(x) ≥ 0
    have hsqrt_le_one : Real.sqrt x ≤ 1 := by
      rw [← Real.sqrt_one]
      exact Real.sqrt_le_sqrt h
    calc Real.sqrt x ≤ 1 := hsqrt_le_one
      _ ≤ max x 1 := le_max_right x 1
  · -- Case x > 1: sqrt(x) ≤ x = max(x, 1)
    -- sqrt(x) ≤ x for x ≥ 1 follows from sqrt(x) * sqrt(x) = x and sqrt(x) ≥ 1
    have h1 : 1 ≤ Real.sqrt x := by
      rw [← Real.sqrt_one]
      exact Real.sqrt_le_sqrt (le_of_lt h)
    have hsqrt_le_x : Real.sqrt x ≤ x := by
      calc Real.sqrt x = Real.sqrt x * 1 := by ring
        _ ≤ Real.sqrt x * Real.sqrt x := mul_le_mul_of_nonneg_left h1 (Real.sqrt_nonneg x)
        _ = x := by rw [← sq, Real.sq_sqrt hx]
    calc Real.sqrt x ≤ x := hsqrt_le_x
      _ ≤ max x 1 := le_max_left x 1

/-- Soundness of interval sqrt: if x ∈ I, x ≥ 0, then Real.sqrt x ∈ sqrt I -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a64315b8c4caa8dbcd5acb7761d9ad740f1572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
