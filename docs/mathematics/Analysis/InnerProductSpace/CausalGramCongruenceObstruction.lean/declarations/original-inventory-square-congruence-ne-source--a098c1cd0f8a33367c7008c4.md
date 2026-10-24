# original_inventory_square_congruence_ne_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5872982f-4a07-ab98-3d8f-280ae3b8285a",
  "kind": "theorem",
  "lexical_name": "original_inventory_square_congruence_ne_source",
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
  "slug": "original-inventory-square-congruence-ne-source--a098c1cd0f8a33367c7008c4",
  "source": {
    "blob": "0ad187fd2acc50565854502717f5e346e43d3a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a098c1cd0f8a33367c7008c4387a79d8cb9e6f5b3ad01804491ff90477a0b219",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5872982f-4a07-ab98-3d8f-280ae3b8285a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_inventory_square_congruence_ne_source {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n)
    (B : Matrix (inventory (Real.log (n : ℝ))) (inventory (Real.log (n : ℝ))) ℝ) :
    B.transpose *
        Matrix.of (fun (i j : inventory (Real.log (n : ℝ))) ↦
          gram (Real.log (n : ℝ)) (i : ℕ) (j : ℕ)) * B ≠
      SourceGram.sourceGramMatrix A (fun i : inventory (Real.log (n : ℝ)) ↦ (i : ℕ)) := by
  let contact : inventory (Real.log (n : ℝ)) :=
    ⟨n, SourceNativeSeparation.touching_atom_in_inventory hn⟩
  exact finite_contact_square_congruence_ne_source
    (ι := inventory (Real.log (n : ℝ))) hA
    (fun i : inventory (Real.log (n : ℝ)) ↦ (i : ℕ))
    (fun i : inventory (Real.log (n : ℝ)) ↦
      lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp i.property).1)
    Subtype.val_injective contact B

/-- Exact square congruence also fails with the prescribed relation T = 2A, A ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad187fd2acc50565854502717f5e346e43d3a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
