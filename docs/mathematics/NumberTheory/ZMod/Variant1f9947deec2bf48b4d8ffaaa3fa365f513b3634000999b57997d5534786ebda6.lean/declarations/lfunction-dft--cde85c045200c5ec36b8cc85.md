# LFunction_dft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a692e94-f8e7-d912-10b2-35e409349ac7",
  "kind": "lemma",
  "lexical_name": "LFunction_dft",
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
  "slug": "lfunction-dft--cde85c045200c5ec36b8cc85",
  "source": {
    "blob": "06c7cd326b587933ac3e0f4d6908e508aec2505e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 216,
    "path": "GRWTSK/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde85c045200c5ec36b8cc85c6c9d78c5485f3c5e970a389b8207568aec4e497",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a692e94-f8e7-d912-10b2-35e409349ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LFunction_dft (Φ : ZMod N → ℂ) {s : ℂ} (hs : Φ 0 = 0 ∨ s ≠ 1) :
    LFunction (𝓕 Φ) s = ∑ j : ZMod N, Φ j * expZeta (toAddCircle (-j)) s := by
  have (j : ZMod N) : Φ j * LFunction (fun k ↦ 𝕖 (-j * k)) s =
      Φ j * expZeta (toAddCircle (-j)) s := by
    by_cases h : -j ≠ 0 ∨ s ≠ 1
    · rw [LFunction_stdAddChar_eq_expZeta _ _ h]
    · simp only [neg_ne_zero, not_or, not_not] at h
      rw [h.1, show Φ 0 = 0 by tauto, zero_mul, zero_mul]
  simp only [LFunction, ← this, mul_sum]
  rw [dft_def, sum_comm]
  simp only [sum_mul, mul_sum, smul_eq_mul, stdAddChar_apply, ← mul_assoc]
  congr 1 with j
  congr 1 with k
  rw [mul_assoc (Φ _), mul_comm (Φ _), neg_mul]

/-- Functional equation for `ZMod` L-functions, in terms of discrete Fourier transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c7cd326b587933ac3e0f4d6908e508aec2505e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
