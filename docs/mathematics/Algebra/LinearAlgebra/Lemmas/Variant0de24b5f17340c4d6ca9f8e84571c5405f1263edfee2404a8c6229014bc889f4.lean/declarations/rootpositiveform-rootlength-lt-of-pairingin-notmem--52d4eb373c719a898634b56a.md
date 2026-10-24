# RootPositiveForm.rootLength_lt_of_pairingIn_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8764e810-22de-b5fa-6268-a5a082cb69ac",
  "kind": "lemma",
  "lexical_name": "RootPositiveForm.rootLength_lt_of_pairingIn_notMem",
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
  "slug": "rootpositiveform-rootlength-lt-of-pairingin-notmem--52d4eb373c719a898634b56a",
  "source": {
    "blob": "03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52d4eb373c719a898634b56a30ad90ae29467f5831b352af95cee307a24b1552",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8764e810-22de-b5fa-6268-a5a082cb69ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RootPositiveForm.rootLength_lt_of_pairingIn_notMem
    (B : P.RootPositiveForm ℤ) {i j : ι}
    (hne : α i ≠ α j) (hne' : α i ≠ - α j)
    (hij : P.pairingIn ℤ i j ∉ ({-1, 0, 1} : Set ℤ)) :
    B.rootLength j < B.rootLength i := by
  have hij' : P.pairingIn ℤ i j = -3 ∨ P.pairingIn ℤ i j = -2 ∨ P.pairingIn ℤ i j = 2 ∨
      P.pairingIn ℤ i j = 3 ∨ P.pairingIn ℤ i j = -4 ∨ P.pairingIn ℤ i j = 4 := by
    have := P.pairingIn_pairingIn_mem_set_of_isCrystallographic i j
    aesop -- #24551 (this should be faster)
  have aux₁ : P.pairingIn ℤ j i = -1 ∨ P.pairingIn ℤ j i = 1 := by
    have _i := P.reflexive_left
    have := P.pairingIn_pairingIn_mem_set_of_isCrystallographic i j
    aesop -- #24551 (this should be faster)
  have aux₂ := B.pairingIn_mul_eq_pairingIn_mul_swap i j
  have hi := B.rootLength_pos i
  rcases aux₁ with hji | hji <;> rcases hij' with hij' | hij' | hij' | hij' | hij' | hij' <;>
  rw [hji, hij'] at aux₂ <;> omega

@[deprecated (since := "2025-05-23")]
alias RootPositiveForm.rootLength_lt_of_pairingIn_nmem :=
  RootPositiveForm.rootLength_lt_of_pairingIn_notMem

variable {i j} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
