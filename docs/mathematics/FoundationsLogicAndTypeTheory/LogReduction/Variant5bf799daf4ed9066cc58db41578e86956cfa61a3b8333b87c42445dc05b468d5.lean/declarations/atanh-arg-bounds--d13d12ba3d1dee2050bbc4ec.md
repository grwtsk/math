# atanh_arg_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea475bc4-5254-dc80-1d2a-cd7be22ddb0a",
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
  "slug": "atanh-arg-bounds--d13d12ba3d1dee2050bbc4ec",
  "source": {
    "blob": "8b23b47202252cf516fed49ea7109fd6d2127279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d13d12ba3d1dee2050bbc4ec6a269095cc7dca74e7fa15e48f4ff6670cbcd7a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea475bc4-5254-dc80-1d2a-cd7be22ddb0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–250.

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

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b23b47202252cf516fed49ea7109fd6d2127279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
