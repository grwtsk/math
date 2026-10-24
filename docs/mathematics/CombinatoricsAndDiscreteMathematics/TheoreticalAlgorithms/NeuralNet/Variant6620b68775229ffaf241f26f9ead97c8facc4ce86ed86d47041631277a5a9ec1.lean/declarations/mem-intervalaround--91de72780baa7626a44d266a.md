# mem_intervalAround

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad4f6fd278d8b9d43c1bafa946304cc409c9a072",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fddefe4-9323-0fbb-8194-30f22df8a3d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c42f6f8-6f76-473c-9b3d-3ef24f2c72de",
  "kind": "theorem",
  "lexical_name": "mem_intervalAround",
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
  "slug": "mem-intervalaround--91de72780baa7626a44d266a",
  "source": {
    "blob": "ad4f6fd278d8b9d43c1bafa946304cc409c9a072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91de72780baa7626a44d266ab31dd0e377d9b2129c4022dc6e085dbb31e38f70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c42f6f8-6f76-473c-9b3d-3ef24f2c72de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_intervalAround {x : ℝ} {center eps : ℚ} (heps : 0 < eps)
    (hx : |x - center| ≤ eps) (prec : Int) (hprec : prec ≤ 0 := by norm_num) :
    x ∈ intervalAround center eps (le_of_lt heps) prec := by
  unfold intervalAround
  apply IntervalDyadic.mem_ofIntervalRat _ prec hprec
  simp only [IntervalRat.mem_def]
  rw [abs_le] at hx
  constructor
  · -- x ≥ center - eps
    have h1 : -(eps : ℝ) ≤ x - (center : ℝ) := hx.1
    have h2 : (center : ℝ) - (eps : ℝ) ≤ x := by linarith
    simp only [Rat.cast_sub]
    exact h2
  · -- x ≤ center + eps
    have h1 : x - (center : ℝ) ≤ (eps : ℝ) := hx.2
    have h2 : x ≤ (center : ℝ) + (eps : ℝ) := by linarith
    simp only [Rat.cast_add]
    exact h2

/-- Main robustness theorem: For any real input (x, y) within ε=0.1 of (0.5, 0.5),
    the network output is contained in the computed output interval.

    This is a **verified robustness certificate**: it proves that small
    perturbations to the input cannot cause the output to leave the computed bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad4f6fd278d8b9d43c1bafa946304cc409c9a072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
