# log_lower_taylor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34ed66ca-67b6-d227-153b-60cf3e13a9e1",
  "kind": "theorem",
  "lexical_name": "log_lower_taylor",
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
  "slug": "log-lower-taylor--011acdaba265075de291e9b0",
  "source": {
    "blob": "e31288865f1982eca7052420a942462b9bdd375e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 42,
    "path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:011acdaba265075de291e9b08c7fcbb8ed93be028892d703a4f5c3fff18b7211",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34ed66ca-67b6-d227-153b-60cf3e13a9e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_lower_taylor (t : ℝ) (ht : 0 ≤ t) : t - t^2 / 2 ≤ log (1 + t) := by
  have h1pt_pos : 0 < 1 + t := by linarith
  -- Use the chain: t - t²/2 ≤ t/(1+t) + t²/2·(something) ≤ log(1+t)
  -- From one_sub_inv_le_log_of_pos: t/(1+t) ≤ log(1+t)
  have hlog_lb : t / (1 + t) ≤ log (1 + t) := by
    have h := one_sub_inv_le_log_of_pos h1pt_pos
    convert h using 1
    field_simp; ring
  -- Key algebraic fact: t - t²/2 ≤ t/(1+t) when t ∈ [0, 1]
  -- and for t > 1, we use a different approach
  -- Use le_log_one_add_of_nonneg: 2t/(t+2) ≤ log(1+t) for t ≥ 0
  -- and show: t - t²/2 ≤ 2t/(t+2)
  have h_chain : t - t^2 / 2 ≤ 2 * t / (t + 2) := by
    by_cases ht0 : t = 0
    · simp [ht0]
    · have ht_pos : 0 < t := ht.lt_of_ne' ht0
      have ht2_pos : 0 < t + 2 := by linarith
      rw [le_div_iff₀ ht2_pos]
      -- (t - t²/2)*(t+2) ≤ 2t
      -- t² + 2t - t³/2 - t² ≤ 2t
      -- 2t - t³/2 ≤ 2t
      -- -t³/2 ≤ 0 ✓ (for t ≥ 0)
      have h1 : (t - t^2 / 2) * (t + 2) = 2*t - t^3/2 := by ring
      rw [h1]
      have h2 : t^3 / 2 ≥ 0 := by positivity
      linarith
  calc t - t^2 / 2 ≤ 2 * t / (t + 2) := h_chain
    _ ≤ log (1 + t) := le_log_one_add_of_nonneg ht

/-- Generalized version matching PNT+ signature.
    Note: For s ≥ 1, this follows from log_lower_taylor since t²/(2s²) ≤ t²/2
    implies t - t²/(2s²) ≥ t - t²/2, but we need the opposite direction.

    The bound works when t is small relative to s:
    - For any s > 0 and t ≥ 0: use log(1+t) ≥ 2t/(t+2) ≥ t - t²/2 ≥ t - t²/(2s²) when s ≤ 1
    - For s > 1: need t²/(2s²) to be small enough that the bound still holds -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31288865f1982eca7052420a942462b9bdd375e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
