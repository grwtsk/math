# ZMod.isSquare_neg_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9fbd503-6c0e-3d76-b084-6a7a25bdb9aa",
  "kind": "theorem",
  "lexical_name": "ZMod.isSquare_neg_one_iff",
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
  "slug": "zmod-issquare-neg-one-iff--4dba1214bdc354ee05e8af14",
  "source": {
    "blob": "318ce78a15cbdaca25ff320139f47d4ed6da294b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 108,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dba1214bdc354ee05e8af14912134660d7441798d8bf30b802d5860dbdf97ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9fbd503-6c0e-3d76-b084-6a7a25bdb9aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.isSquare_neg_one_iff {n : ℕ} (hn : Squarefree n) :
    IsSquare (-1 : ZMod n) ↔ ∀ {q : ℕ}, q.Prime → q ∣ n → q % 4 ≠ 3 := by
  refine ⟨fun H q hqp hqd => hqp.mod_four_ne_three_of_dvd_isSquare_neg_one hqd H, fun H => ?_⟩
  induction n using induction_on_primes with
  | h₀ => exact False.elim (hn.ne_zero rfl)
  | h₁ => exact ⟨0, by simp only [mul_zero, eq_iff_true_of_subsingleton]⟩
  | h p n hpp ih =>
    haveI : Fact p.Prime := ⟨hpp⟩
    have hcp : p.Coprime n := by
      by_contra hc
      exact hpp.not_isUnit (hn p <| mul_dvd_mul_left p <| hpp.dvd_iff_not_coprime.mpr hc)
    have hp₁ := ZMod.exists_sq_eq_neg_one_iff.mpr (H hpp (dvd_mul_right p n))
    exact ZMod.isSquare_neg_one_mul hcp hp₁
      (ih hn.of_mul_right fun hqp hqd => H hqp <| dvd_mul_of_dvd_right hqd _)

/-- If `n` is a squarefree natural number, then `-1` is a square modulo `n` if and only if
`n` has no divisor `q` that is `≡ 3 mod 4`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318ce78a15cbdaca25ff320139f47d4ed6da294b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
