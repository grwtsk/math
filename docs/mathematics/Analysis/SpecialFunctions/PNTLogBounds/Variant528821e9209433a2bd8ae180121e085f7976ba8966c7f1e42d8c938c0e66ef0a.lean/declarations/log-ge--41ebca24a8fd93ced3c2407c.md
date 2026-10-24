# log_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1e32361-198b-75d3-bdc5-1b8b940d1bb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92cf0835-712f-8825-6473-5e081c4258f8",
  "kind": "theorem",
  "lexical_name": "log_ge",
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
  "slug": "log-ge--41ebca24a8fd93ced3c2407c",
  "source": {
    "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 70,
    "path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41ebca24a8fd93ced3c2407c5ee4a94bb7545e4485e529b4d9b0da4834bf7673",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92cf0835-712f-8825-6473-5e081c4258f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_ge (t s : ℝ) (ht : t ≥ 0) (hs : s > 0) :
    t - t^2 / (2 * s^2) ≤ log (1 + t) := by
  by_cases! hs1 : s ≥ 1
  · -- Case s ≥ 1: t²/(2s²) ≤ t²/2, so we chain through log_lower_taylor
    -- But wait: t - t²/(2s²) ≥ t - t²/2, so we can't use log_lower_taylor directly!
    -- Instead, use the stronger bound from le_log_one_add_of_nonneg
    have h1pt_pos : 0 < 1 + t := by linarith
    have hs2_pos : 0 < s^2 := sq_pos_of_pos hs
    have h2s2_pos : 0 < 2 * s^2 := by positivity
    -- For the general case, we use the full Taylor bound machinery
    -- For now, we observe that for s ≥ 1 and t small, the bound holds
    -- This requires interval arithmetic for a complete proof
    sorry
  · -- Case s < 1: t²/(2s²) > t²/2, so t - t²/(2s²) < t - t²/2
    -- This follows from log_lower_taylor by transitivity
    have hss : s^2 < 1 := by nlinarith
    have hs2_pos : 0 < s^2 := sq_pos_of_pos hs
    have h2s2_pos : 0 < 2 * s^2 := by positivity
    -- Show t²/(2s²) ≥ t²/2 when s² < 1
    have h_ineq : t^2 / (2 * s^2) ≥ t^2 / 2 := by
      rw [ge_iff_le, div_le_div_iff₀ (by positivity : (0:ℝ) < 2) h2s2_pos]
      have h : 2 * s^2 ≤ 2 := by nlinarith
      nlinarith [sq_nonneg t]
    have h1 : t - t^2 / (2 * s^2) ≤ t - t^2 / 2 := by linarith
    calc t - t^2 / (2 * s^2) ≤ t - t^2 / 2 := h1
      _ ≤ log (1 + t) := log_lower_taylor t ht


/-! ## PNT#766: Second log lower bound (concavity) -/

/-- For 0 ≤ t ≤ t₀ < 1, we have (t/t₀) * log(1-t₀) ≤ log(1-t).
    This follows from concavity of log.
    Proof: Apply concavity of log on (0, ∞) with:
    - x = 1-t₀ ∈ (0, 1), y = 1
    - weights a = t/t₀, b = 1 - t/t₀ (when t₀ > 0)
    - Convex combination: a(1-t₀) + b·1 = 1-t
    - By concavity: a·log(1-t₀) + b·log(1) ≤ log(1-t) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
