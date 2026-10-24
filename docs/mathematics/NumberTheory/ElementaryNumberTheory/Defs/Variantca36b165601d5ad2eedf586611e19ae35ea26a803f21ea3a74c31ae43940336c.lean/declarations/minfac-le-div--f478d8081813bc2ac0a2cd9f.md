# minFac_le_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2d99a46-ff07-a2cc-3f44-0dcc80e828be",
  "kind": "theorem",
  "lexical_name": "minFac_le_div",
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
  "slug": "minfac-le-div--f478d8081813bc2ac0a2cd9f",
  "source": {
    "blob": "58d71c96ff5b0e857ad4ee2536b546eda472bc57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 343,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variantca36b165601d5ad2eedf586611e19ae35ea26a803f21ea3a74c31ae43940336c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f478d8081813bc2ac0a2cd9f938e217d3f8fffea16a2665e8b5180e5b559c25e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variantca36b165601d5ad2eedf586611e19ae35ea26a803f21ea3a74c31ae43940336c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2d99a46-ff07-a2cc-3f44-0dcc80e828be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minFac_le_div {n : ℕ} (pos : 0 < n) (np : ¬Prime n) : minFac n ≤ n / minFac n :=
  match minFac_dvd n with
  | ⟨0, h0⟩ => absurd pos <| by rw [h0, mul_zero]; decide
  | ⟨1, h1⟩ => by
    rw [mul_one] at h1
    rw [prime_def_minFac, not_and_or, ← h1, eq_self_iff_true, _root_.not_true, _root_.or_false,
      not_le] at np
    rw [le_antisymm (le_of_lt_succ np) (succ_le_of_lt pos), minFac_one, Nat.div_one]
  | ⟨x + 2, hx⟩ => by
    conv_rhs =>
      congr
      rw [hx]
    rw [Nat.mul_div_cancel_left _ (minFac_pos _)]
    exact minFac_le_of_dvd (le_add_left 2 x) ⟨minFac n, by rwa [mul_comm]⟩

/-- The square of the smallest prime factor of a composite number `n` is at most `n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variantca36b165601d5ad2eedf586611e19ae35ea26a803f21ea3a74c31ae43940336c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variantca36b165601d5ad2eedf586611e19ae35ea26a803f21ea3a74c31ae43940336c.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d71c96ff5b0e857ad4ee2536b546eda472bc57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
