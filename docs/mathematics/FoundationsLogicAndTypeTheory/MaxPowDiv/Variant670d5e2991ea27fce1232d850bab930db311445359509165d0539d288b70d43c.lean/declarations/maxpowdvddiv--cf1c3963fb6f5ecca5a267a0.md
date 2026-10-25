# maxPowDvdDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db738d40e38e0f0ed3ced251fd61031e212a64936f7a33102a762eae3cb61b33",
  "kind": "def",
  "lexical_name": "maxPowDvdDiv",
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
  "slug": "maxpowdvddiv--cf1c3963fb6f5ecca5a267a0",
  "source": {
    "blob": "c544a39e135f773d5512c3291777b88228738533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf1c3963fb6f5ecca5a267a05516a882b5effcb1c547cba0c16da65182c41977",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db738d40e38e0f0ed3ced251fd61031e212a64936f7a33102a762eae3cb61b33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def maxPowDvdDiv (p n : ℕ) : ℕ × ℕ :=
  if H : 1 < p ∧ n ≠ 0 then
    go p H
  else
    (0, n)
  where
  /-- Auxiliary definition for `Nat.maxPowDvdDiv`. -/
  go (p : ℕ) (hp : 1 < p ∧ n ≠ 0) :=
    if hmod : n % p = 0 then
      let (e, q) := go (p * p) <| by simp [Nat.one_lt_mul_iff, hp, Nat.lt_trans Nat.one_pos]
      if q % p = 0 then (2 * e + 1, q / p) else (2 * e, q)
    else
      (0, n)
  termination_by n / p
  decreasing_by
    rw [← Nat.dvd_iff_mod_eq_zero] at hmod
    rcases hmod with ⟨m, rfl⟩
    have hp₀ : 0 < p := Nat.lt_trans Nat.one_pos hp.1
    rw [Nat.mul_div_mul_left _ _ hp₀, Nat.mul_div_cancel_left _ hp₀]
    exact Nat.div_lt_self (by grind) hp.1

/-- Divide `n` by the maximal power of `p` that divides `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c544a39e135f773d5512c3291777b88228738533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
