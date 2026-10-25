# chain_iff_pairwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "968f548761284dc1e32e3166d8b3a4ffe6fcea69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1009,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5762906a-e36d-cae6-adb0-278d33f1a1c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:435ad696-a35a-245b-7275-2fc259c6a9d5",
  "kind": "theorem",
  "lexical_name": "chain_iff_pairwise",
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
  "slug": "chain-iff-pairwise--84f09bda453f7e212b5bf762",
  "source": {
    "blob": "968f548761284dc1e32e3166d8b3a4ffe6fcea69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1024,
    "line": 1009,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84f09bda453f7e212b5bf762a1d0d4f8a42f4a4c7c6c3950275dea109b419620",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:435ad696-a35a-245b-7275-2fc259c6a9d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1009–1024.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chain_iff_pairwise [IsTrans α r] : Chain r s ↔ ∀ a ∈ s, ∀ b ∈ s, r a b :=
  ⟨by
    induction' s using Cycle.induction_on with a l _
    · exact fun _ b hb => (not_mem_nil _ hb).elim
    intro hs b hb c hc
    rw [Cycle.chain_coe_cons, List.chain_iff_pairwise] at hs
    simp only [pairwise_append, pairwise_cons, mem_append, mem_singleton, List.not_mem_nil,
      IsEmpty.forall_iff, imp_true_iff, Pairwise.nil, forall_eq, true_and_iff] at hs
    simp only [mem_coe_iff, mem_cons] at hb hc
    rcases hb with (rfl | hb) <;> rcases hc with (rfl | hc)
    · exact hs.1 c (Or.inr rfl)
    · exact hs.1 c (Or.inl hc)
    · exact hs.2.2 b hb
    · exact _root_.trans (hs.2.2 b hb) (hs.1 c (Or.inl hc)), Cycle.chain_of_pairwise⟩
#align cycle.chain_iff_pairwise Cycle.chain_iff_pairwise

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean#L1009).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `968f548761284dc1e32e3166d8b3a4ffe6fcea69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
