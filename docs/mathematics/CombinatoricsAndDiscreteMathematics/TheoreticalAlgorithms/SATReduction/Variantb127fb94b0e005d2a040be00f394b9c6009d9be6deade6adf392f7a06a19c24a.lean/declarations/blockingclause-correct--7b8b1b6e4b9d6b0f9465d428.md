# blockingClause_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eeedc2308ebd3be2b678f4a06e6c77347eb45057",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89d70736-84f3-a824-b02c-6c732102f850",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66ef786a-5657-1ad4-dc40-314c4b026121",
  "kind": "theorem",
  "lexical_name": "blockingClause_correct",
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
  "slug": "blockingclause-correct--7b8b1b6e4b9d6b0f9465d428",
  "source": {
    "blob": "eeedc2308ebd3be2b678f4a06e6c77347eb45057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 492,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b8b1b6e4b9d6b0f9465d4280c14a3bdb7a1bf3b4a12e2c4ca3099bbb11a05f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66ef786a-5657-1ad4-dc40-314c4b026121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockingClause_correct
    {n : Nat} (σ : Assignment) (blocked : Bits n) :
    Clause.Holds σ (blockingClause blocked) ↔ readInput σ ≠ blocked := by
  constructor
  · rintro ⟨literal, hmem, hliteral⟩ heq
    obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hmem
    have hdiff : σ i.val ≠ blocked i :=
      (Literal.holds_blocking σ i.val (blocked i)).mp hliteral
    apply hdiff
    have hi := congrFun heq i
    simpa [readInput] using hi
  · intro hne
    have hexists : ∃ i, readInput σ i ≠ blocked i := by
      by_contra hnone
      apply hne
      funext i
      by_contra hi
      exact hnone ⟨i, hi⟩
    obtain ⟨i, hi⟩ := hexists
    refine ⟨Literal.blocking i.val (blocked i), ?_, ?_⟩
    · exact List.mem_ofFn.mpr ⟨i, rfl⟩
    · apply (Literal.holds_blocking σ i.val (blocked i)).mpr
      simpa [readInput] using hi

/--
Truth-table CNF for the predicate `algorithm input = target`.

For every non-preimage input, one blocking clause excludes exactly that input.
This proves finite representability for *every* fixed-width deterministic
function, but the construction can contain `2^n` clauses.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeedc2308ebd3be2b678f4a06e6c77347eb45057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
