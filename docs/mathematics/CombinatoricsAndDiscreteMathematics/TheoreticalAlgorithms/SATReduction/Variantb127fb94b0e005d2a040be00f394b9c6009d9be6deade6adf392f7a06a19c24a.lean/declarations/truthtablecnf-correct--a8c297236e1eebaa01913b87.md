# truthTableCNF_correct

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
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1119ded1-5f26-19ca-272c-cd1bf4b7c8be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bf6ab16-4142-934d-a1e3-6617fc337532",
  "kind": "theorem",
  "lexical_name": "truthTableCNF_correct",
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
  "slug": "truthtablecnf-correct--a8c297236e1eebaa01913b87",
  "source": {
    "blob": "eeedc2308ebd3be2b678f4a06e6c77347eb45057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 533,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8c297236e1eebaa01913b87f1db68230c31c294e9634ad80736b512d6f85ed3",
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

Occurrence: `result:8bf6ab16-4142-934d-a1e3-6617fc337532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truthTableCNF_correct
    {n m : Nat}
    (algorithm : Bits n → Bits m)
    (target : Bits m)
    (σ : Assignment) :
    CNF.Holds σ (truthTableCNF algorithm target) ↔
      algorithm (readInput σ) = target := by
  classical
  constructor
  · intro hformula
    by_contra hbad
    have hfilter :
        readInput σ ∈ Finset.univ.filter
          (fun input => algorithm input ≠ target) := by
      simp [hbad]
    have hlist :
        readInput σ ∈
          (Finset.univ.filter
            (fun input => algorithm input ≠ target)).toList := by
      simpa using hfilter
    have hclause :
        blockingClause (n := n) (readInput σ) ∈
          truthTableCNF algorithm target := by
      unfold truthTableCNF
      exact List.mem_map.mpr ⟨readInput σ, hlist, rfl⟩
    have hblocked := hformula _ hclause
    exact (blockingClause_correct σ (readInput σ)).mp hblocked rfl
  · intro hgood clause hclause
    unfold truthTableCNF at hclause
    obtain ⟨blocked, hblockedList, rfl⟩ := List.mem_map.mp hclause
    apply (blockingClause_correct σ blocked).mpr
    intro heq
    have hblockedFilter :
        blocked ∈ Finset.univ.filter
          (fun input => algorithm input ≠ target) := by
      simpa using hblockedList
    have hneq : algorithm blocked ≠ target :=
      (Finset.mem_filter.mp hblockedFilter).2
    apply hneq
    rw [← heq]
    exact hgood

/--
Every deterministic function on a fixed finite bit-vector domain reduces
extensionally to SAT.

This theorem makes no polynomial-size claim; use the circuit theorem above for
an efficient reduction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeedc2308ebd3be2b678f4a06e6c77347eb45057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
