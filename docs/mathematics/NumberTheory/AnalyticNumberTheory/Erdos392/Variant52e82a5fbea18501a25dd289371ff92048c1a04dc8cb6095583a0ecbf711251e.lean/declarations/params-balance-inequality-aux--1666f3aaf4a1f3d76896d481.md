# Params.balance_inequality_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8954b876-4f4e-73a6-230d-b78977f918c0",
  "kind": "lemma",
  "lexical_name": "Params.balance_inequality_aux",
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
  "slug": "params-balance-inequality-aux--1666f3aaf4a1f3d76896d481",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1914,
    "line": 1891,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1666f3aaf4a1f3d76896d4818e7aa27b71f0c202daadd0576aeae720ba119d66",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8954b876-4f4e-73a6-230d-b78977f918c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1891–1914.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.balance_inequality_aux (P : Params) (p : ℕ) (hp_prime : p.Prime) :
    (P.n.primeCounting : ℝ) * P.L * (P.L - Nat.log p P.L) ≥
      Real.log P.n * (1 / Real.log 2 - 1) := by
  have h_pi : (P.n).primeCounting ≥ Real.log P.n := by
    have := primeCounting_ge_log P.n (show 2 ≤ P.n from ?_)
    · exact this
    · nlinarith [P.hL_pos, P.hL, P.hL'.le]
  have h1 : (1 / Real.log 2 - 1) ≤ 1 := by
    rw [div_sub_one, div_le_iff₀] <;>
      nlinarith [log_two_gt_d9, log_le_sub_one_of_pos zero_lt_two]
  have h2 := L_sub_log_ge_one P p hp_prime
  have h3 : (0 : ℝ) ≤ P.n.primeCounting := by positivity
  exact le_trans
    (mul_le_mul_of_nonneg_left h1 (by positivity))
    (by nlinarith [mul_le_mul_of_nonneg_left h2 h3])

@[blueprint
  "initial-factorization-tiny-prime-ge"
  (statement := /-- A tiny prime $p \leq L$ can be in deficit by at most $M\log n + ML\pi(n)$.-/)
  (proof := /-- In addition to the Legendre calculations, one potentially removes factors of the
  form $plq$ with $l \leq L$ and $q \leq n$ a prime up to $M$ times each, with at most $L$ copies
  of $p$ removed at each factor.-/)
  (latexEnv := "sublemma")
  (discussion := 515)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1891).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
