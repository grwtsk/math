# coprime_of_probablePrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4abdeb8f-5dd7-604b-8a5b-296ea4daf873",
  "kind": "theorem",
  "lexical_name": "coprime_of_probablePrime",
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
  "slug": "coprime-of-probableprime--dc0a616c31ed7debca5ca3a2",
  "source": {
    "blob": "83ea71a08ad728f71ec044dd5a3c0aa5efb00d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 87,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc0a616c31ed7debca5ca3a2fed5db21ea186162f1a4ff206b084192de94c916",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4abdeb8f-5dd7-604b-8a5b-296ea4daf873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_of_probablePrime {n b : ℕ} (h : ProbablePrime n b) (h₁ : 1 ≤ n) (h₂ : 1 ≤ b) :
    Nat.Coprime n b := by
  by_cases h₃ : 2 ≤ n
  · -- To prove that `n` is coprime with `b`, we need to show that for all prime factors of `n`,
    -- we can derive a contradiction if `n` divides `b`.
    apply Nat.coprime_of_dvd
    -- If `k` is a prime number that divides both `n` and `b`, then we know that `n = m * k` and
    -- `b = j * k` for some natural numbers `m` and `j`. We substitute these into the hypothesis.
    rintro k hk ⟨m, rfl⟩ ⟨j, rfl⟩
    -- Because prime numbers do not divide 1, it suffices to show that `k ∣ 1` to prove a
    -- contradiction
    apply Nat.Prime.not_dvd_one hk
    -- Since `n` divides `b ^ (n - 1) - 1`, `k` also divides `b ^ (n - 1) - 1`
    replace h := dvd_of_mul_right_dvd h
    -- Because `k` divides `b ^ (n - 1) - 1`, if we can show that `k` also divides `b ^ (n - 1)`,
    -- then we know `k` divides 1.
    rw [Nat.dvd_add_iff_right h, Nat.sub_add_cancel (Nat.one_le_pow _ _ h₂)]
    -- Since `k` divides `b`, `k` also divides any power of `b` except `b ^ 0`. Therefore, it
    -- suffices to show that `n - 1` isn't zero. However, we know that `n - 1` isn't zero because we
    -- assumed `2 ≤ n` when doing `by_cases`.
    refine dvd_of_mul_right_dvd (dvd_pow_self (k * j) ?_)
    lia
  -- If `n = 1`, then it follows trivially that `n` is coprime with `b`.
  · rw [show n = 1 by lia]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ea71a08ad728f71ec044dd5a3c0aa5efb00d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
