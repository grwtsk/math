# Gamma_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f1a3f77dd9f70a1716cdd40600573cde925ca09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:218730fd-5bf6-91db-150b-a7c665b950b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:097e6b67-26e3-6946-f18b-e3936c6df8f6",
  "kind": "theorem",
  "lexical_name": "Gamma_ne_zero",
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
  "slug": "gamma-ne-zero--d216cf5bb267ab4e8a4d64d9",
  "source": {
    "blob": "1f1a3f77dd9f70a1716cdd40600573cde925ca09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 499,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d216cf5bb267ab4e8a4d64d95a8aad2e2727be50dcb0dc24b684220809dc4a45",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:097e6b67-26e3-6946-f18b-e3936c6df8f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_ne_zero {s : ℝ} (hs : ∀ m : ℕ, s ≠ -m) : Gamma s ≠ 0 := by
  suffices ∀ {n : ℕ}, -(n : ℝ) < s → Gamma s ≠ 0 by
    apply this
    swap
    · exact ⌊-s⌋₊ + 1
    rw [neg_lt, Nat.cast_add, Nat.cast_one]
    exact Nat.lt_floor_add_one _
  intro n
  induction n generalizing s with
  | zero =>
    intro hs
    refine (Gamma_pos_of_pos ?_).ne'
    rwa [Nat.cast_zero, neg_zero] at hs
  | succ _ n_ih =>
    intro hs'
    have : Gamma (s + 1) ≠ 0 := by
      apply n_ih
      · intro m
        specialize hs (1 + m)
        contrapose! hs
        rw [← eq_sub_iff_add_eq] at hs
        rw [hs]
        push_cast
        ring
      · rw [Nat.cast_add, Nat.cast_one, neg_add] at hs'
        linarith
    rw [Gamma_add_one, mul_ne_zero_iff] at this
    · exact this.2
    · simpa using hs 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1a3f77dd9f70a1716cdd40600573cde925ca09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
