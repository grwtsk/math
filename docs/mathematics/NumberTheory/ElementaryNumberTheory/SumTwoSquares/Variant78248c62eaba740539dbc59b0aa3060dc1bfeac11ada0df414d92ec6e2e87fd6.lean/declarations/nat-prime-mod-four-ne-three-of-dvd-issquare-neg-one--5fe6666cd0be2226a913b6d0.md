# Nat.Prime.mod_four_ne_three_of_dvd_isSquare_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:816ac9a4-18ad-7b0d-d239-f15f7db4be25",
  "kind": "theorem",
  "lexical_name": "Nat.Prime.mod_four_ne_three_of_dvd_isSquare_neg_one",
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
  "slug": "nat-prime-mod-four-ne-three-of-dvd-issquare-neg-one--5fe6666cd0be2226a913b6d0",
  "source": {
    "blob": "318ce78a15cbdaca25ff320139f47d4ed6da294b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 99,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe6666cd0be2226a913b6d0184cad1856045cc241fa3983dd73b28dbc85bac7",
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

Occurrence: `result:816ac9a4-18ad-7b0d-d239-f15f7db4be25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.Prime.mod_four_ne_three_of_dvd_isSquare_neg_one {p n : ℕ} (hpp : p.Prime) (hp : p ∣ n)
    (hs : IsSquare (-1 : ZMod n)) : p % 4 ≠ 3 := by
  obtain ⟨y, h⟩ := ZMod.isSquare_neg_one_of_dvd hp hs
  rw [← sq, eq_comm, show (-1 : ZMod p) = -1 ^ 2 by ring] at h
  haveI : Fact p.Prime := ⟨hpp⟩
  exact ZMod.mod_four_ne_three_of_sq_eq_neg_sq' one_ne_zero h

/-- If `n` is a squarefree natural number, then `-1` is a square modulo `n` if and only if
`n` is not divisible by a prime `q` such that `q % 4 = 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318ce78a15cbdaca25ff320139f47d4ed6da294b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
