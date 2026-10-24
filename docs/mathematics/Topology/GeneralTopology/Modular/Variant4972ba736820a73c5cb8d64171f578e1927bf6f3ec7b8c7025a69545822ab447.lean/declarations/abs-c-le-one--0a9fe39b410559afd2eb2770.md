# abs_c_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fb4c6b8-49e2-a236-fa50-6c48364fce6d",
  "kind": "theorem",
  "lexical_name": "abs_c_le_one",
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
  "slug": "abs-c-le-one--0a9fe39b410559afd2eb2770",
  "source": {
    "blob": "7c6ff5e0ef6481aedbc362481a943158f1515c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 468,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a9fe39b410559afd2eb277061f640c5a42dceaac0474d1ac080ffd87b3621ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fb4c6b8-49e2-a236-fa50-6c48364fce6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_c_le_one (hz : z ∈ 𝒟) (hg : g • z ∈ 𝒟) : |g 1 0| ≤ 1 := by
  let c' : ℤ := g 1 0
  let c := (c' : ℝ)
  suffices 3 * c ^ 2 ≤ 4 by
    rw [← Int.cast_pow, ← Int.cast_three, ← Int.cast_four, ← Int.cast_mul, Int.cast_le] at this
    replace this : c' ^ 2 ≤ 1 ^ 2 := by lia
    rwa [sq_le_sq, abs_one] at this
  suffices c ≠ 0 → 9 * c ^ 4 ≤ 16 by
    rcases eq_or_ne c 0 with (hc | hc)
    · simp [hc]
    · apply le_of_sq_le_sq <;> grind
  intro hc
  have h₁ : 3 * 3 * c ^ 4 ≤ 4 * (g • z).im ^ 2 * (4 * z.im ^ 2) * c ^ 4 := by
    gcongr <;> exact three_le_four_mul_im_sq_of_mem_fd (by assumption)
  have h₂ : (c * z.im) ^ 4 / normSq (denom (↑g) z) ^ 2 ≤ 1 :=
    div_le_one_of_le₀
      (pow_four_le_pow_two_of_pow_two_le (z.c_mul_im_sq_le_normSq_denom g)) (sq_nonneg _)
  calc
    9 * c ^ 4 ≤ c ^ 4 * z.im ^ 2 * (g • z).im ^ 2 * 16 := by linarith
    _ = c ^ 4 * z.im ^ 4 / normSq (denom g z) ^ 2 * 16 := by grind [im_smul_eq_div_normSq]
    _ ≤ 16 := by rw [← mul_pow]; linarith

/-- Classify cases when `z ∈ 𝒟` and `g • z ∈ 𝒟` such that `c = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ff5e0ef6481aedbc362481a943158f1515c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
