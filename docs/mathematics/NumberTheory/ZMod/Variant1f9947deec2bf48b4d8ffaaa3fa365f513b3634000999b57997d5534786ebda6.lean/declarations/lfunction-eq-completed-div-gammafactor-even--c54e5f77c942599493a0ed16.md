# LFunction_eq_completed_div_gammaFactor_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c394934f-b797-1e89-a4d6-ef928670d72c",
  "kind": "lemma",
  "lexical_name": "LFunction_eq_completed_div_gammaFactor_even",
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
  "slug": "lfunction-eq-completed-div-gammafactor-even--c54e5f77c942599493a0ed16",
  "source": {
    "blob": "06c7cd326b587933ac3e0f4d6908e508aec2505e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 394,
    "path": "GRWTSK/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c54e5f77c942599493a0ed16fd20e071cc41639212746be1e8759722199225fb",
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

Occurrence: `result:c394934f-b797-1e89-a4d6-ef928670d72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LFunction_eq_completed_div_gammaFactor_even (hΦ : Φ.Even) (s : ℂ) (hs : s ≠ 0 ∨ Φ 0 = 0) :
    LFunction Φ s = completedLFunction Φ s / Gammaℝ s := by
  simp only [completedLFunction_def_even hΦ, LFunction_def_even hΦ, mul_div_assoc, sum_div]
  congr 2 with i
  rcases ne_or_eq i 0 with hi | rfl
  · rw [hurwitzZetaEven_def_of_ne_or_ne (.inl (hi ∘ toAddCircle_eq_zero.mp))]
  · rcases hs with hs | hΦ'
    · rw [hurwitzZetaEven_def_of_ne_or_ne (.inr hs)]
    · simp only [hΦ', map_zero, zero_mul]

/--
Relation between the completed L-function and the usual one (odd case).
We state it this way around so it holds at the poles of the gamma factor as well.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c7cd326b587933ac3e0f4d6908e508aec2505e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
