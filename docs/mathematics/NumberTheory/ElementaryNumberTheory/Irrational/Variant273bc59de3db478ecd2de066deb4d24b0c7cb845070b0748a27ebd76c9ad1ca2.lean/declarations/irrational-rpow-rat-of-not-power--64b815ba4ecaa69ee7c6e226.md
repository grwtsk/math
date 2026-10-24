# irrational_rpow_rat_of_not_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b633d8c2-7759-745b-9fa8-e4ae4ec5e653",
  "kind": "theorem",
  "lexical_name": "irrational_rpow_rat_of_not_power",
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
  "slug": "irrational-rpow-rat-of-not-power--64b815ba4ecaa69ee7c6e226",
  "source": {
    "blob": "103159d7045d05f2907435acfc8c22bbd9b4c425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64b815ba4ecaa69ee7c6e2263dc46f8bdb4fda348a569d38a0e1125441deada2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b633d8c2-7759-745b-9fa8-e4ae4ec5e653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem irrational_rpow_rat_of_not_power {q : ℚ} {a b : ℕ}
    (h : ∀ p : ℚ, q ^ a ≠ p ^ b) (hb : 0 < b) (hq : 0 ≤ q) :
    Irrational (Real.rpow q (a / b : ℚ)) := by
  simp only [Irrational, Rat.cast_div, Rat.cast_natCast, Real.rpow_eq_pow, Set.mem_range,
    not_exists]
  intro x hx
  absurd h x
  rify
  rw [hx, ← Real.rpow_mul_natCast, div_mul_cancel₀] <;> simp
  · omega
  · assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `103159d7045d05f2907435acfc8c22bbd9b4c425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
