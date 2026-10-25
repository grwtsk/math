# shiftLeft_add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a672ee5a7dfbc6037310094ffce987f25e77c29f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46a2ad4d-7cc1-1120-38d4-9a1377426c97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f17e052-40b9-ee36-02e9-48af2d4b7c6a",
  "kind": "theorem",
  "lexical_name": "shiftLeft_add'",
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
  "slug": "shiftleft-add--e5d3669ef009ecade8933372",
  "source": {
    "blob": "a672ee5a7dfbc6037310094ffce987f25e77c29f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 381,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantb57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d3669ef009ecade8933372d07f9d045726812e1dbcd49e6bfb1edec8b73855",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bitwise/Variantb57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f17e052-40b9-ee36-02e9-48af2d4b7c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftLeft_add' : ∀ (m : ℤ) (n : ℕ) (k : ℤ), m <<< (n + k) = (m <<< (n : ℤ)) <<< k
  | (m : ℕ), n, (k : ℕ) =>
    congr_arg ofNat (by simp [Nat.shiftLeft_eq, Nat.pow_add, mul_assoc])
  | -[_+1], _, (k : ℕ) => congr_arg negSucc (Nat.shiftLeft'_add _ _ _ _)
  | (m : ℕ), n, -[k+1] =>
    subNatNat_elim n k.succ (fun n k i => (↑m) <<< i = (Nat.shiftLeft' false m n) >>> k)
      (fun (i n : ℕ) => by simp [← Nat.shiftLeft_sub _])
      fun i n => by
        simp_rw [negSucc_eq, shiftLeft_neg, Nat.shiftLeft'_false, Nat.shiftRight_add,
          ← Nat.shiftLeft_sub _ le_rfl, Nat.sub_self, Nat.shiftLeft_zero, ← shiftRight_natCast,
          ← shiftRight_add', Nat.cast_one]
  | -[m+1], n, -[k+1] =>
    subNatNat_elim n k.succ
      (fun n k i => -[m+1] <<< i = -[(Nat.shiftLeft' true m n) >>> k+1])
      (fun i n =>
        congr_arg negSucc <| by
          rw [← Nat.shiftLeft'_sub, Nat.add_sub_cancel_left]; apply Nat.le_add_right)
      fun i n =>
      congr_arg negSucc <| by rw [add_assoc, Nat.shiftRight_add, ← Nat.shiftLeft'_sub _ _ le_rfl,
          Nat.sub_self, Nat.shiftLeft']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bitwise/Variantb57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantb57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a672ee5a7dfbc6037310094ffce987f25e77c29f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
