# quadraticPlusOneRootCount_prime_mod_four_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3adab8bc-2bc2-ebc3-0df5-84ce6c28fd2f",
  "kind": "theorem",
  "lexical_name": "quadraticPlusOneRootCount_prime_mod_four_three",
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
  "slug": "quadraticplusonerootcount-prime-mod-four-three--17602cb6831eab086b324fe7",
  "source": {
    "blob": "e29543503364c65c33a691c12309f73f1b3fb060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 202,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17602cb6831eab086b324fe711cc7b0649f1a254efe4953c885a863739382bea",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3adab8bc-2bc2-ebc3-0df5-84ce6c28fd2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticPlusOneRootCount_prime_mod_four_three
    {p : ℕ} (hp : Nat.Prime p)
    (hmod : p % 4 = 3) :
    quadraticPlusOneRootCount p = 0 := by
  let : Fact p.Prime := ⟨hp⟩
  let : NeZero p := ⟨hp.ne_zero⟩
  have hp2 : p ≠ 2 := by
    intro hp_eq
    subst p
    norm_num at hmod
  have hnsquare : ¬ IsSquare (-1 : ZMod p) := by
    intro hsquare
    have := (ZMod.exists_sq_eq_neg_one_iff (p := p)).1 hsquare
    omega
  have hleg : legendreSym p (-1) = -1 :=
    (legendreSym.eq_neg_one_iff p).2 (by simpa using hnsquare)
  have hcard := legendreSym.card_sqrts (p := p) hp2 (-1)
  rw [hleg] at hcard
  norm_num only at hcard
  have hzmod :
      Fintype.card (QuadraticPlusOneZModRoot p) = 0 := by
    have hsame : Fintype.card (QuadraticPlusOneZModRoot p) =
        {x : ZMod p | x ^ 2 = ((-1 : ℤ) : ZMod p)}.toFinset.card := by
      rw [Set.toFinset_card]
      apply Fintype.card_congr
      exact Equiv.subtypeEquivRight fun x => by simp
    rw [hsame]
    exact_mod_cast hcard
  rw [quadraticPlusOneRootCount_eq_zmod]
  exact hzmod

end
end GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29543503364c65c33a691c12309f73f1b3fb060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
