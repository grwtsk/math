# truthTableCNF_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fc8f8c6-4226-f267-7778-75ab0ecdc15f",
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
  "slug": "truthtablecnf-correct--59307678bf25a9ac3d153806",
  "source": {
    "blob": "42e24640674a6b58f6b5e4e96bc0fd17f9505c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 541,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59307678bf25a9ac3d1538064dd37e4b5268580c7047976d58fba261958aea84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fc8f8c6-4226-f267-7778-75ab0ecdc15f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–589.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e24640674a6b58f6b5e4e96bc0fd17f9505c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
