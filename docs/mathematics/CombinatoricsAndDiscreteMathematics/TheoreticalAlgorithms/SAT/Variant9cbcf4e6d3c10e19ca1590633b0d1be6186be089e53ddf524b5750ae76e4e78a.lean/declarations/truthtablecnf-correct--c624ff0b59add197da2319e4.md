# truthTableCNF_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82cdbbb3859438100a5c790ef9277ef2e224f188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7eaa7eb8-f1a2-3ae0-a892-95dac951bbd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0229f74c-62b4-098c-76a1-14d0abfc6ebd",
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
  "slug": "truthtablecnf-correct--c624ff0b59add197da2319e4",
  "source": {
    "blob": "82cdbbb3859438100a5c790ef9277ef2e224f188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 533,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SAT/Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c624ff0b59add197da2319e48d37f991269fb048dd07e74e7daf4c063a1197da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SAT/Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0229f74c-62b4-098c-76a1-14d0abfc6ebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–581.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SAT/Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SAT/Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82cdbbb3859438100a5c790ef9277ef2e224f188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
