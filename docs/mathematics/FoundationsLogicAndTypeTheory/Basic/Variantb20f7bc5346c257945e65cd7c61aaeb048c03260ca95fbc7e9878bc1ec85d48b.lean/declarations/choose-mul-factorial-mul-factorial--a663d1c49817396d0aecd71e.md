# choose_mul_factorial_mul_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9a76270917cdc41ac89c955046861da523608a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3634156d-559a-5555-1b65-fbdb1e47ea99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8660d671-0344-6ec4-4cb5-c5131fc58e8c",
  "kind": "theorem",
  "lexical_name": "choose_mul_factorial_mul_factorial",
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
  "slug": "choose-mul-factorial-mul-factorial--a663d1c49817396d0aecd71e",
  "source": {
    "blob": "b9a76270917cdc41ac89c955046861da523608a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a663d1c49817396d0aecd71e2f081b80f3b7cc45218884239c18b0ce6b190c87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8660d671-0344-6ec4-4cb5-c5131fc58e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul_factorial_mul_factorial : ∀ {n k}, k ≤ n → choose n k * k ! * (n - k)! = n !
  | 0, _, hk => by simp [Nat.eq_zero_of_le_zero hk]
  | n + 1, 0, _ => by simp
  | n + 1, succ k, hk => by
    cases' lt_or_eq_of_le hk with hk₁ hk₁
    · have h : choose n k * k.succ ! * (n - k)! = (k + 1) * n ! := by
        rw [← choose_mul_factorial_mul_factorial (le_of_succ_le_succ hk)]
        simp [factorial_succ, mul_comm, mul_left_comm, mul_assoc]
      have h₁ : (n - k)! = (n - k) * (n - k.succ)! := by
        rw [← succ_sub_succ, succ_sub (le_of_lt_succ hk₁), factorial_succ]
      have h₂ : choose n (succ k) * k.succ ! * ((n - k) * (n - k.succ)!) = (n - k) * n ! := by
        rw [← choose_mul_factorial_mul_factorial (le_of_lt_succ hk₁)]
        simp [factorial_succ, mul_comm, mul_left_comm, mul_assoc]
      have h₃ : k * n ! ≤ n * n ! := Nat.mul_le_mul_right _ (le_of_succ_le_succ hk)
      rw [choose_succ_succ, add_mul, add_mul, succ_sub_succ, h, h₁, h₂, add_mul, tsub_mul,
        factorial_succ, ← add_tsub_assoc_of_le h₃, add_assoc, ← add_mul, add_tsub_cancel_left,
        add_comm]
    · rw [hk₁]; simp [hk₁, mul_comm, choose, tsub_self]
#align nat.choose_mul_factorial_mul_factorial Nat.choose_mul_factorial_mul_factorial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a76270917cdc41ac89c955046861da523608a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
