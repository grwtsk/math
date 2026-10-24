# norm_posPart_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3440a7c2-3015-fee0-8d52-701e10be5666",
  "kind": "theorem",
  "lexical_name": "norm_posPart_mono",
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
  "slug": "norm-pospart-mono--5117e3bf46e138a4090df783",
  "source": {
    "blob": "f86d7f9ef44d8304600f9e742e1afe40fbe2a2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 496,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5117e3bf46e138a4090df7832e38c149ea304ce93b1bfd8631aadbf0920e2d41",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3440a7c2-3015-fee0-8d52-701e10be5666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_posPart_mono {a b : A} (hab : a ≤ b) : ‖a⁺‖ ≤ ‖b⁺‖ := by
  by_cases! ha : ¬ IsSelfAdjoint a
  · simp [CFC.posPart_def, cfcₙ_apply_of_not_predicate, ha, mt (IsSelfAdjoint.of_le hab) ha]
  have hb : IsSelfAdjoint b := ha.of_ge hab
  have h : a ≤ b⁺ := hab.trans CFC.le_posPart
  have key := IsSelfAdjoint.conjugate_le_conjugate h (CFC.posPart_nonneg a).isSelfAdjoint
  nth_rw 2 [← CFC.posPart_sub_negPart a] at key
  simp only [mul_sub, CFC.posPart_mul_negPart, sub_zero] at key
  obtain (ha' | ha') := eq_zero_or_norm_pos (a⁺)
  · simp [ha']
  suffices ‖a⁺‖ ^ 3 ≤ ‖a⁺‖ * ‖b⁺‖ * ‖a⁺‖ by simpa [pow_succ, ha']
  calc
    ‖a⁺‖ ^ 3 = ‖a⁺ * a⁺ * a⁺‖ := by
      conv_rhs => rw [← cfcₙ_id' ℝ a⁺, ← cfcₙ_mul .., ← cfcₙ_mul ..]
      simp [← pow_three', norm_cfcₙ_pow ℝ a⁺ 3]
    _ ≤ ‖a⁺ * b⁺ * a⁺‖ := norm_le_norm_of_le_of_nonneg key
    _ ≤ ‖a⁺‖ * ‖b⁺‖ * ‖a⁺‖ := norm_mul₃_le ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f86d7f9ef44d8304600f9e742e1afe40fbe2a2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
