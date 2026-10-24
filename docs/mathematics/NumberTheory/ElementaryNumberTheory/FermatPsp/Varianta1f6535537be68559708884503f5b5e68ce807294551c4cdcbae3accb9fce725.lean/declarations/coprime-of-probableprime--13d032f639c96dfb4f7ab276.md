# coprime_of_probablePrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99edc02fe962d6536bd91c79d9ec286dae85a7b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c0d364e-ef4d-175f-46b7-f797d4812771",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7a99a94-3985-c6e9-b2a8-33ffecb50071",
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
  "slug": "coprime-of-probableprime--13d032f639c96dfb4f7ab276",
  "source": {
    "blob": "99edc02fe962d6536bd91c79d9ec286dae85a7b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 75,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d032f639c96dfb4f7ab276fd803da7262a3ceb63b4d424295621c510bde4a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7a99a94-3985-c6e9-b2a8-33ffecb50071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_of_probablePrime {n b : ℕ} (h : ProbablePrime n b) (h₁ : 1 ≤ n) (h₂ : 1 ≤ b) :
    Nat.coprime n b := by
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
    refine' dvd_of_mul_right_dvd (dvd_pow_self (k * j) _)
    linarith [tsub_pos_of_lt (one_lt_two.trans_le h₃)]
  -- If `n = 1`, then it follows trivially that `n` is coprime with `b`.
  · rw [show n = 1 by linarith]
    norm_num
#align fermat_psp.coprime_of_probable_prime Nat.coprime_of_probablePrime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99edc02fe962d6536bd91c79d9ec286dae85a7b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
