# exists_mul_left_or_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a098f4e-ca34-2c67-789e-1e77b701df06",
  "kind": "lemma",
  "lexical_name": "exists_mul_left_or_mul_right",
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
  "slug": "exists-mul-left-or-mul-right--1c85515864b215df8105a864",
  "source": {
    "blob": "9446422e43524c23f4c560bf17e6d407d3526c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 157,
    "path": "GRWTSK/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c85515864b215df8105a864eb9d0852067a9b7e494f9ac765bfe9c865bb3c4c",
  "verification": {
    "reference": "docs/verification/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a098f4e-ca34-2c67-789e-1e77b701df06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mul_left_or_mul_right [DivisionRing K] (a b : K[ε]) :
    ∃ c, a * c = b ∨ b * c = a := by
  rcases isUnit_or_isNilpotent a with ha|ha
  · lift a to K[ε]ˣ using ha
    exact ⟨a⁻¹ * b, by simp⟩
  rcases isUnit_or_isNilpotent b with hb|hb
  · lift b to K[ε]ˣ using hb
    exact ⟨b⁻¹ * a, by simp⟩
  rw [isNilpotent_iff_eps_dvd] at ha hb
  obtain ⟨x, rfl⟩ := ha
  obtain ⟨y, rfl⟩ := hb
  suffices ∃ c, fst x * fst c = fst y ∨ fst y * fst c = fst x by
    simpa [TrivSqZeroExt.ext_iff] using this
  rcases eq_or_ne (fst x) 0 with hx|hx
  · refine ⟨ε, Or.inr ?_⟩
    simp [hx]
  refine ⟨inl ((fst x)⁻¹ * fst y), ?_⟩
  simp [← inl_mul, ← mul_assoc, mul_inv_cancel₀ hx]

end Field

end DualNumber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9446422e43524c23f4c560bf17e6d407d3526c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
