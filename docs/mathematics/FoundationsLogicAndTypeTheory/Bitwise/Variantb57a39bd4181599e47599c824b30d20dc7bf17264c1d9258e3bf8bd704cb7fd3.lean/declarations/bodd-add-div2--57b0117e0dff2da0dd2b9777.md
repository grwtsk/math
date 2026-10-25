# bodd_add_div2

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
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70de1155-4d23-950a-ca96-1049cab2803c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f86a5af-2883-a8f9-06e9-0229bfc1c68d",
  "kind": "theorem",
  "lexical_name": "bodd_add_div2",
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
  "slug": "bodd-add-div2--57b0117e0dff2da0dd2b9777",
  "source": {
    "blob": "a672ee5a7dfbc6037310094ffce987f25e77c29f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantb57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57b0117e0dff2da0dd2b977754830ed09d61e63f1ae80543266fce71b58b36ee",
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

Occurrence: `result:5f86a5af-2883-a8f9-06e9-0229bfc1c68d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bodd_add_div2 : ∀ n, cond (bodd n) 1 0 + 2 * div2 n = n
  | (n : ℕ) => by
    rw [show (cond (bodd n) 1 0 : ℤ) = (cond (bodd n) 1 0 : ℕ) by cases bodd n <;> rfl]
    exact congr_arg ofNat n.bodd_add_div2
  | -[n+1] => by
    refine Eq.trans ?_ (congr_arg negSucc n.bodd_add_div2)
    dsimp [bodd]; cases Nat.bodd n <;> dsimp [cond, not, div2, Int.mul]
    · change -[2 * Nat.div2 n+1] = _
      rw [zero_add]
    · rw [zero_add, add_comm]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bitwise/Variantb57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantb57a39bd4181599e47599c824b30d20dc7bf17264c1d9258e3bf8bd704cb7fd3.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a672ee5a7dfbc6037310094ffce987f25e77c29f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
