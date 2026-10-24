# no_pairwise_third_trace_decoder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15238cb3-d3ac-e162-30d7-b0cefb1853a0",
  "kind": "theorem",
  "lexical_name": "no_pairwise_third_trace_decoder",
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
  "slug": "no-pairwise-third-trace-decoder--8f4c225911ba740cea4bf3a1",
  "source": {
    "blob": "6a06833b74a2e9b1297262900cea6d849b507e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4c225911ba740cea4bf3a1ea09dea1417ed82a3fe0e76cb3d8c79790dd278a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15238cb3-d3ac-e162-30d7-b0cefb1853a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_pairwise_third_trace_decoder :
    ¬∃ f : (Fin 3→Fin 3→ℝ)→ℝ, ∀ G : Matrix (Fin 3) (Fin 3) ℝ,
      G.PosDef → f (pairwiseProfile G)=(G^3).trace := by
  rintro ⟨f,hf⟩
  have hp := hf gramPlus gramPlus_posDef
  have hm := hf gramMinus gramMinus_posDef
  rw [pairwise_equal] at hp
  have he := hp.symm.trans hm
  rw [third_trace_plus,third_trace_minus] at he
  norm_num at he

#print axioms positive_euclidean_gram
#print axioms gramPlus_euclidean
#print axioms gramMinus_euclidean
#print axioms pairwiseProfile_eq_norm_sq
#print axioms first_trace_equal
#print axioms second_trace_equal
#print axioms third_trace_plus
#print axioms third_trace_minus
#print axioms no_pairwise_third_trace_decoder

#print axioms gramPlus
#print axioms gramMinus
#print axioms pairwiseProfile
#print axioms tripleCycle
#print axioms gramPlus_hermitian
#print axioms gramMinus_hermitian
#print axioms gramPlus_energy
#print axioms gramMinus_energy
#print axioms gramPlus_posDef
#print axioms gramMinus_posDef
#print axioms positive_gram_factor
#print axioms gramPlus_realizable
#print axioms gramMinus_realizable
#print axioms diagonals_equal
#print axioms pairwise_equal
#print axioms triple_plus
#print axioms triple_minus
#print axioms triple_distinct
#print axioms det_plus
#print axioms det_minus
#print axioms det_distinct
#print axioms no_pairwise_triple_decoder
#print axioms no_pairwise_determinant_decoder
end ContinuousResearch.CyclicPhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a06833b74a2e9b1297262900cea6d849b507e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
