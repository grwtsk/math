# Params.initial.sum_valuation_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c893ece9-58a9-9495-5c5e-aad12f509453",
  "kind": "lemma",
  "lexical_name": "Params.initial.sum_valuation_eq",
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
  "slug": "params-initial-sum-valuation-eq--fa6fb8896444617650e3b8d7",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1290,
    "line": 1259,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6fb8896444617650e3b8d7095f55e36d4e262763f43d9bade768c2ce38090b",
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

Occurrence: `result:c893ece9-58a9-9495-5c5e-aad12f509453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1259–1290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.sum_valuation_eq (P : Params) {p : ℕ} (hp : p.Prime)
    (hp' : p > Real.sqrt P.n) (hps : p < P.n / P.L) : (P.initial.a.map (·.factorization p)).sum =
    P.M * (Finset.filter (p ∣ ·) (Finset.Ico (P.n - P.n / P.M) P.n)).card := by
  have h1 : ∀ m ∈ Finset.Ico (P.n - P.n / P.M) P.n, (if m ∈ smoothNumbers (P.n / P.L)
      then m.factorization p else 0) = if p ∣ m then 1 else 0 := fun m hm ↦ by
    by_cases m = 0
    · simp_all only [Finset.mem_Ico, nonpos_iff_eq_zero]
      exact absurd hm.1
        (Nat.ne_of_gt (Nat.sub_pos_of_lt
          (Nat.div_lt_self hm.2 (by linarith [P.hM]))))
    · simp_all [valuation_eq_indicator]
  have h2 : (P.initial.a.map (·.factorization p)).sum =
      P.M * ∑ m ∈ Finset.Ico (P.n - P.n / P.M) P.n,
        if m ∈ smoothNumbers (P.n / P.L) then m.factorization p else 0 := by
    have : (P.initial.a.map (·.factorization p)).sum =
        (map (fun m ↦ if m ∈ smoothNumbers (P.n / P.L) then m.factorization p else 0)
          (join (replicate P.M (Finset.Ico (P.n - P.n / P.M) P.n).val))).sum := by
      conv_lhs => rw [show P.initial.a = filter (· ∈ smoothNumbers (P.n / P.L))
          (join (replicate P.M (Finset.Ico (P.n - P.n / P.M) P.n).val)) from rfl]
      induction (replicate P.M (Finset.Ico (P.n - P.n / P.M) P.n).val).join
        using Multiset.induction <;> aesop
    simp_all
  simp_all [sum_congr rfl h1]

@[blueprint
  "initial-factorization-medium-prime-ge"
  (statement := /-- A medium prime $\sqrt{n} < p ≤ n/L$ can be in deficit by at most $M$.-/)
  (proof := /-- The number of times $p$ divides $a_1 \dots a_t$ is at least $M \lfloor n/Mp
  \rfloor ≥ n/p - M$ (note that the removal of the non-smooth numbers
  does not remove any multiples
  of $p$).  Meanwhile, the number of times $p$ divides $n!$ is at most $n/p$.-/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
