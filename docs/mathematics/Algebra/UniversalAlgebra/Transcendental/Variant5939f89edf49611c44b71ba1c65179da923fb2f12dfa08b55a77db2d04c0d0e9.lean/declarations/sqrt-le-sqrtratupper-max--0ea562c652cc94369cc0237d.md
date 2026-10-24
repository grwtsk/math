# sqrt_le_sqrtRatUpper_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9397c5555a168ef248c757c9211b9ab111d5301b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 656,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e45c5084-1c9b-6428-8e4f-57980f170c51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfe8d460-eed1-ce95-8551-24b9e94f5190",
  "kind": "theorem",
  "lexical_name": "sqrt_le_sqrtRatUpper_max",
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
  "slug": "sqrt-le-sqrtratupper-max--0ea562c652cc94369cc0237d",
  "source": {
    "blob": "9397c5555a168ef248c757c9211b9ab111d5301b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 656,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ea562c652cc94369cc0237d2f634c394cf7b0c8475979d06839f65c1cc900dc",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfe8d460-eed1-ce95-8551-24b9e94f5190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sqrt_le_sqrtRatUpper_max {x : ℝ} {q : ℚ} (hx : 0 ≤ x) (hxq : x ≤ q) :
    Real.sqrt x ≤ max (sqrtRatUpper q : ℝ) 1 := by
  by_cases! hq0 : q ≤ 0
  · -- q ≤ 0 means x ≤ 0, combined with hx gives x = 0
    have hx0 : x = 0 := le_antisymm (le_trans hxq (by exact_mod_cast hq0)) hx
    rw [hx0, Real.sqrt_zero]
    exact le_trans (by norm_num : (0 : ℝ) ≤ 1) (le_max_right (sqrtRatUpper q : ℝ) (1 : ℝ))
  · -- q > 0
    calc Real.sqrt x
        ≤ Real.sqrt q := Real.sqrt_le_sqrt hxq
      _ ≤ sqrtRatUpper q := sqrt_le_sqrtRatUpper (le_of_lt hq0)
      _ ≤ max (sqrtRatUpper q : ℝ) 1 := le_max_left (sqrtRatUpper q : ℝ) (1 : ℝ)

/-- Soundness of tight sqrt interval: if x ∈ I and x ≥ 0, then sqrt(x) ∈ sqrtIntervalTight I -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9397c5555a168ef248c757c9211b9ab111d5301b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
