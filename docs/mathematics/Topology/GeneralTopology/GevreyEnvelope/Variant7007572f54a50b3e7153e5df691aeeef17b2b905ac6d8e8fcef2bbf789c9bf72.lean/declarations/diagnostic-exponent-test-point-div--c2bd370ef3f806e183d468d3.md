# diagnostic_exponent_test_point_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10186dd935491151c269697c9e3584f2eded1d36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b594dca-503a-9e6f-183f-85d6423a9c8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe544ac3-80a4-d621-5a3e-80a5c9f4f64b",
  "kind": "theorem",
  "lexical_name": "diagnostic_exponent_test_point_div",
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
  "slug": "diagnostic-exponent-test-point-div--c2bd370ef3f806e183d468d3",
  "source": {
    "blob": "10186dd935491151c269697c9e3584f2eded1d36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2bd370ef3f806e183d468d3b5d56e51408a0c91e7c86530701c74238391167a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe544ac3-80a4-d621-5a3e-80a5c9f4f64b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagnostic_exponent_test_point_div (c d : ℝ) {s A : ℝ}
    (hs : 0 < s) (hA : 1 < A) :
    diagnosticExponent c d s A (testPoint s A) / A =
      1 - (4 * c / s) * (Real.log A)⁻¹ - d * (Real.sqrt A)⁻¹ - Real.log A / A := by
  have hA0 : 0 < A := lt_trans zero_lt_one hA
  have hAne : A ≠ 0 := ne_of_gt hA0
  have hlog : Real.log A ≠ 0 := ne_of_gt (Real.log_pos hA)
  have hsqrt : Real.sqrt A ≠ 0 := ne_of_gt (Real.sqrt_pos.2 hA0)
  have hquot : A / Real.log A / A = (Real.log A)⁻¹ := by
    field_simp
  have hsqrtquot : Real.sqrt A / A = (Real.sqrt A)⁻¹ := by
    calc
      Real.sqrt A / A = Real.sqrt A / (Real.sqrt A) ^ 2 := by
        rw [Real.sq_sqrt (le_of_lt hA0)]
      _ = (Real.sqrt A)⁻¹ := by field_simp
  rw [diagnostic_exponent_test_point c d hs hA]
  simp only [sub_div, mul_div_assoc, div_self hAne, hquot, hsqrtquot]

/-- No fixed damping constant changes the leading normalized value at this point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10186dd935491151c269697c9e3584f2eded1d36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
