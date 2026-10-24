# sum_eq_iff_sum_smul_moebius_eq_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "299e1ba4f134a704c90472796288b26ffd83ed7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6b5b39f6bed8148cf90d1682042843002e89e36b196076ac29241200c72159f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab77742f-d1f0-e556-471c-895f8f5f1c40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f36b70f-4867-77d1-e4a1-2a231cd073bd",
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
  "slug": "sum-eq-iff-sum-smul-moebius-eq-on--55c4a493595428c351a74ee7",
  "source": {
    "blob": "299e1ba4f134a704c90472796288b26ffd83ed7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1204,
    "line": 1180,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantc6b5b39f6bed8148cf90d1682042843002e89e36b196076ac29241200c72159f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55c4a493595428c351a74ee7069e6ed714ada46dd6ddf082c9fbe0da73852a5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantc6b5b39f6bed8148cf90d1682042843002e89e36b196076ac29241200c72159f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f36b70f-4867-77d1-e4a1-2a231cd073bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1180–1204.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantc6b5b39f6bed8148cf90d1682042843002e89e36b196076ac29241200c72159f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantc6b5b39f6bed8148cf90d1682042843002e89e36b196076ac29241200c72159f.lean#L1180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299e1ba4f134a704c90472796288b26ffd83ed7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
