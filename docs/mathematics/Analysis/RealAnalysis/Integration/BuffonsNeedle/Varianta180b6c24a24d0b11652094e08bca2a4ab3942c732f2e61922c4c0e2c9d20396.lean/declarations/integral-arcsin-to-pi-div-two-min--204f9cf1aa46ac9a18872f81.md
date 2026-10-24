# integral_arcsin_to_pi_div_two_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4974230b9c84bf9f6826bec42fdbfb15e0a49b4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91a50ec1-eaf4-7417-ddc1-e0fae188c55c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b60e916-73be-fcd9-db23-b12a1b0da542",
  "kind": "lemma",
  "lexical_name": "integral_arcsin_to_pi_div_two_min",
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
  "slug": "integral-arcsin-to-pi-div-two-min--204f9cf1aa46ac9a18872f81",
  "source": {
    "blob": "4974230b9c84bf9f6826bec42fdbfb15e0a49b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 321,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:204f9cf1aa46ac9a18872f81515834e1f8eb756fb9c4642a0d9408ad08aae51a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b60e916-73be-fcd9-db23-b12a1b0da542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_arcsin_to_pi_div_two_min (h : d ≤ l) :
    ∫ θ in (d / l).arcsin..(π / 2), min d (θ.sin * l) = (π / 2 - (d / l).arcsin) * d := by
  have : Set.EqOn (fun θ => min d (θ.sin * l)) (fun _ => d) (Set.uIcc (d / l).arcsin (π / 2)) := by
    intro θ ⟨hθ₁, hθ₂⟩
    wlog hθ_ne_pi_div_two : θ ≠ π / 2
    · simp only [ne_eq, not_not] at hθ_ne_pi_div_two
      simp only [hθ_ne_pi_div_two, Real.sin_pi_div_two, one_mul, min_eq_left h]
    simp only [min_eq_left (d / l).arcsin_le_pi_div_two,
      max_eq_right (d / l).arcsin_le_pi_div_two] at hθ₁ hθ₂
    have hθ_mem : θ ∈ Set.Ico (-(π / 2)) (π / 2) := by
      exact ⟨le_trans (Real.arcsin_mem_Icc (d / l)).left hθ₁, lt_of_le_of_ne hθ₂ hθ_ne_pi_div_two⟩
    simp_rw [min_eq_left ((div_le_iff₀ hl).mp ((Real.arcsin_le_iff_le_sin' hθ_mem).mp hθ₁))]
  rw [intervalIntegral.integral_congr this, intervalIntegral.integral_const, smul_eq_mul]

include hd hBₘ hB hl in
/-- Buffon's Needle, the long case (`d ≤ l`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4974230b9c84bf9f6826bec42fdbfb15e0a49b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
