# three_failure_good_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeb88e6c-02f6-58c5-15d6-ca6c0614f256",
  "kind": "theorem",
  "lexical_name": "three_failure_good_mass",
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
  "slug": "three-failure-good-mass--5ddfc55aaea9ce300c6598ee",
  "source": {
    "blob": "5e9d5844046328d25132c83c7003c192e820123b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 60,
    "path": "GRWTSK/Analysis/Fourier/ZModSubsetSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ddfc55aaea9ce300c6598ee46073ca81ec0525d9653332896d77feadea1a413",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeb88e6c-02f6-58c5-15d6-ca6c0614f256`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_failure_good_mass (space B₁ B₂ B₃ : Finset Ω) (hne : space.Nonempty)
    (h₁ : probability space B₁ ≤ 1 / 100)
    (h₂ : probability space B₂ ≤ 3 / 100)
    (h₃ : probability space B₃ ≤ 1 / 25) :
    (23 / 25 : ℚ) ≤ probability space (space \ (B₁ ∪ B₂ ∪ B₃)) := by
  have hu := probability_union_le space (B₁ ∪ B₂) B₃
  have hu2 := probability_union_le space B₁ B₂
  have hd : probability space (space \ (B₁ ∪ B₂ ∪ B₃)) =
      1 - probability space (B₁ ∪ B₂ ∪ B₃) := by
    unfold probability
    have hsub : space ∩ (B₁ ∪ B₂ ∪ B₃) ⊆ space := Finset.inter_subset_left
    have hset : space ∩ (space \ (B₁ ∪ B₂ ∪ B₃)) =
        space \ (space ∩ (B₁ ∪ B₂ ∪ B₃)) := by
      ext x
      simp only [Finset.mem_inter, Finset.mem_sdiff]
      tauto
    rw [hset, Finset.card_sdiff_of_subset hsub, Nat.cast_sub (Finset.card_le_card hsub)]
    have hn : (space.card : ℚ) ≠ 0 := by exact_mod_cast ne_of_gt hne.card_pos
    field_simp
  rw [hd]
  linarith

/-- Source Theorem 1.3 uses `S.powersetCard m`, not independent Bernoulli choices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSubsetSum.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e9d5844046328d25132c83c7003c192e820123b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
