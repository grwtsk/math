# atanh_arg_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5387fe54fbecca509a1e12474561b9ffe393bf5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65b36570-7bef-0683-16b2-d3452d55d152",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cba285e4-1113-4fd8-a09c-f8aa6bcef13b",
  "kind": "theorem",
  "lexical_name": "atanh_arg_bounds",
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
  "slug": "atanh-arg-bounds--60534ae73fe755c06fc3984a",
  "source": {
    "blob": "5387fe54fbecca509a1e12474561b9ffe393bf5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60534ae73fe755c06fc3984a4a64cbf044c6b9c498938c49a9bef2ae5bb3b247",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cba285e4-1113-4fd8-a09c-f8aa6bcef13b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atanh_arg_bounds {m : ℚ} (hlo : 1/2 ≤ m) (hhi : m ≤ 2) :
    let y := (m - 1) / (m + 1)
    (-1)/3 ≤ y ∧ y ≤ 1/3 := by
  intro y  -- Introduce let-bound variable
  have hden_pos : 0 < m + 1 := by linarith
  have hden_nonneg : 0 ≤ m + 1 := le_of_lt hden_pos
  constructor
  · -- Lower bound: (m-1)/(m+1) ≥ -1/3 when m ≥ 1/2
    -- Cross multiply: -1/3 ≤ (m-1)/(m+1) ⟺ -(m+1) ≤ 3(m-1) ⟺ 2 ≤ 4m
    have h : (-1 : ℚ) / 3 * (m + 1) ≤ m - 1 := by linarith
    have key := div_le_div_of_nonneg_right h hden_nonneg
    simp only [mul_div_assoc, div_self (ne_of_gt hden_pos), mul_one] at key
    exact key
  · -- Upper bound: (m-1)/(m+1) ≤ 1/3 when m ≤ 2
    -- Cross multiply: (m-1)/(m+1) ≤ 1/3 ⟺ 3(m-1) ≤ m+1 ⟺ 2m ≤ 4
    have h : m - 1 ≤ (1 : ℚ) / 3 * (m + 1) := by linarith
    have key := div_le_div_of_nonneg_right h hden_nonneg
    simp only [mul_div_assoc, div_self (ne_of_gt hden_pos), mul_one] at key
    exact key

/-- log(m) = 2 * atanh((m-1)/(m+1)) for m > 0 with m ≠ 1 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5387fe54fbecca509a1e12474561b9ffe393bf5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
