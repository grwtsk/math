# prime_card_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd0fc765-ad63-c736-ff62-c388eca14d37",
  "kind": "theorem",
  "lexical_name": "prime_card_lower_bound",
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
  "slug": "prime-card-lower-bound--67258428138ee68a4a26657f",
  "source": {
    "blob": "d91298539e468bee096df87dea5a383af07b9940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 78,
    "path": "GRWTSK/Combinatorics/Sequences/CyclicSumsetGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67258428138ee68a4a26657fe697ecc685ba3fdb43e09cb3e3794e5316d9fabe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd0fc765-ad63-c736-ff62-c388eca14d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_card_lower_bound {p : ℕ} (hp : p.Prime)
    (S : Finset (ZMod p)) (hS : S.Nonempty) (k : ℕ) :
    min p (1 + k * (S.card - 1)) ≤ (iteratedSumset S k).card := by
  have hSpos : 0 < S.card := hS.card_pos
  induction k with
  | zero => simp [iteratedSumset]
  | succ k ih =>
    have hCD := ZMod.cauchy_davenport hp hS (iteratedSumset_nonempty S hS k)
    change min p (1 + (k + 1) * (S.card - 1)) ≤
      (S + iteratedSumset S k).card
    by_cases hk : 1 + k * (S.card - 1) ≤ p
    · rw [min_eq_right hk] at ih
      apply le_trans _ hCD
      apply min_le_min_left
      rw [Nat.add_mul]
      omega
    · rw [min_eq_left (by omega)] at ih
      have hbig : p ≤ S.card + (iteratedSumset S k).card - 1 := by omega
      rw [min_eq_left hbig] at hCD
      exact (min_le_left _ _).trans hCD

/-- Fact 2.4: if the iterated sumset has not saturated the prime cyclic group,
its cardinality is at least `1 + k (|S|-1)`. Nonemptiness is necessary: the
statement for a positive number of summands fails for the empty set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/CyclicSumsetGrowth.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d91298539e468bee096df87dea5a383af07b9940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
