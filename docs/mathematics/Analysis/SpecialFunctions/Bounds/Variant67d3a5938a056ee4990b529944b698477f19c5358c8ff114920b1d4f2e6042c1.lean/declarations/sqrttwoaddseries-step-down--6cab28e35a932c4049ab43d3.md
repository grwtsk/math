# sqrtTwoAddSeries_step_down

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6a99b043c73ea5a1bfd993175b89baf7c38b45d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58f024c4-9fd3-abc9-a318-48491e2a9862",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2840d187-6233-9f53-461c-e0520afe80ba",
  "kind": "theorem",
  "lexical_name": "sqrtTwoAddSeries_step_down",
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
  "slug": "sqrttwoaddseries-step-down--6cab28e35a932c4049ab43d3",
  "source": {
    "blob": "a6a99b043c73ea5a1bfd993175b89baf7c38b45d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 87,
    "path": "GRWTSK/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cab28e35a932c4049ab43d3cddb9409f586c3f8d408a317f70316ce90628704",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2840d187-6233-9f53-461c-e0520afe80ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtTwoAddSeries_step_down (a b : ℕ) {c d n : ℕ} {z : ℝ}
    (hz : z ≤ sqrtTwoAddSeries (a / b) n) (hb : 0 < b) (hd : 0 < d)
    (h : a ^ 2 * d ≤ (2 * d + c) * b ^ 2) : z ≤ sqrtTwoAddSeries (c / d) (n + 1) := by
  apply le_trans hz; rw [sqrtTwoAddSeries_succ]; apply sqrtTwoAddSeries_monotone_left
  apply le_sqrt_of_sq_le
  have hb' : 0 < (b : ℝ) := Nat.cast_pos.2 hb
  have hd' : 0 < (d : ℝ) := Nat.cast_pos.2 hd
  rw [div_pow, add_div_eq_mul_add_div _ _ (ne_of_gt hd'), div_le_div_iff₀ (pow_pos hb' _) hd']
  exact mod_cast h

section Tactic

open Lean Elab Tactic Qq

/-- Create a proof of `a < π` for a fixed rational number `a`, given a witness, which is a
sequence of rational numbers `√2 < r 1 < r 2 < ... < r n < 2` satisfying the property that
`√(2 + r i) ≤ r(i+1)`, where `r 0 = 0` and `√(2 - r n) ≥ a/2^(n+1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a99b043c73ea5a1bfd993175b89baf7c38b45d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
