# sum_eq_iff_sum_smul_moebius_eq_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2da0b4fb-2a2d-0e58-401e-4661b3f4fcbb",
  "kind": "theorem",
  "lexical_name": "sum_eq_iff_sum_smul_moebius_eq_on",
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
  "slug": "sum-eq-iff-sum-smul-moebius-eq-on--1847d0a3a9c4489b8e83b89f",
  "source": {
    "blob": "3fb304d4ef40bf24ee99cf11450b012de924679c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1212,
    "line": 1188,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1847d0a3a9c4489b8e83b89f93b7d223b101a4c55f4680c574c3c87cf03440d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2da0b4fb-2a2d-0e58-401e-4661b3f4fcbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1188–1212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_iff_sum_smul_moebius_eq_on [AddCommGroup R] {f g : ℕ → R}
    (s : Set ℕ) (hs : ∀ m n, m ∣ n → n ∈ s → m ∈ s) :
    (∀ n > 0, n ∈ s → (∑ i in n.divisors, f i) = g n) ↔
      ∀ n > 0, n ∈ s → (∑ x : ℕ × ℕ in n.divisorsAntidiagonal, μ x.fst • g x.snd) = f n := by
  constructor
  · intro h
    let G := fun (n:ℕ) => (∑ i in n.divisors, f i)
    intro n hn hnP
    suffices ∑ d in n.divisors, μ (n/d) • G d = f n from by
      rw [Nat.sum_divisorsAntidiagonal' (f:= fun x y => μ x • g y), ←this, sum_congr rfl]
      intro d hd
      rw [←h d (Nat.pos_of_mem_divisors hd) $ hs d n (Nat.dvd_of_mem_divisors hd) hnP]
    rw [←Nat.sum_divisorsAntidiagonal' (f:= fun x y => μ x • G y)]
    apply sum_eq_iff_sum_smul_moebius_eq.mp _ n hn
    intro _ _; rfl
  · intro h
    let F := fun (n:ℕ) => ∑ x : ℕ × ℕ in n.divisorsAntidiagonal, μ x.fst • g x.snd
    intro n hn hnP
    suffices ∑ d in n.divisors, F d = g n from by
      rw [←this, sum_congr rfl]
      intro d hd
      rw [←h d (Nat.pos_of_mem_divisors hd) $ hs d n (Nat.dvd_of_mem_divisors hd) hnP]
    apply sum_eq_iff_sum_smul_moebius_eq.mpr _ n hn
    intro _ _; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean#L1188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb304d4ef40bf24ee99cf11450b012de924679c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
