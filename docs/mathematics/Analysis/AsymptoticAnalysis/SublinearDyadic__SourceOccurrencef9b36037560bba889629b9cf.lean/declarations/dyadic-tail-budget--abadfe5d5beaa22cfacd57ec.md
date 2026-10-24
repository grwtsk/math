# dyadic_tail_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcaa4353-8382-960e-9f01-c5ea131f3a00",
  "kind": "theorem",
  "lexical_name": "dyadic_tail_budget",
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
  "slug": "dyadic-tail-budget--abadfe5d5beaa22cfacd57ec",
  "source": {
    "blob": "c77c4e684f065879f2bb66206f950e3706d448d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 124,
    "path": "GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abadfe5d5beaa22cfacd57ec4d710e8e00c09bdcf2867bec4b2797906d039ccd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcaa4353-8382-960e-9f01-c5ea131f3a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_tail_budget (loss : ℕ → ℝ) (hpos : ∀ n, 0 ≤ loss n)
    (ε : ℝ) (hε : 0 ≤ ε) (K : ℕ)
    (htail : ∀ n, K ≤ n → loss n ≤ ε*(n : ℝ)) :
    ∀ J : ℕ, (∑ j ∈ Finset.range J, loss (2^j)) ≤
      (∑ j ∈ Finset.range K, loss (2^j)) + ε*(2 : ℝ)^J := by
  intro J
  induction J with
  | zero =>
      simp only [Finset.range_zero, Finset.sum_empty, pow_zero, mul_one]
      exact add_nonneg (Finset.sum_nonneg (fun j _ => hpos (2^j))) hε
  | succ J ih =>
      by_cases hJK : J < K
      · have hp := prefix_le loss hpos (show J+1 ≤ K by omega)
        exact hp.trans (le_add_of_nonneg_right (mul_nonneg hε (by positivity)))
      · have hK : K ≤ 2^J := (by omega : K ≤ J).trans (nat_le_two_pow J)
        have hs := htail (2^J) hK
        simp only [Nat.cast_pow, Nat.cast_ofNat] at hs
        rw [Finset.sum_range_succ, pow_succ]
        linarith

/-- An exact increasing family with a sublinear dyadic loss has sublinear log growth.
This is the universal induction theorem, not the missing arithmetic step estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c77c4e684f065879f2bb66206f950e3706d448d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
