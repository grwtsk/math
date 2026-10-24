# no_pairwise_determinant_decoder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:addab78b-3d6c-93b5-f3d7-42995bdf793f",
  "kind": "theorem",
  "lexical_name": "no_pairwise_determinant_decoder",
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
  "slug": "no-pairwise-determinant-decoder--6372be5fd05c6237e88a35b5",
  "source": {
    "blob": "4c8cbfe4c57c1ac114ff696cc989fce205e27efa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6372be5fd05c6237e88a35b58e76c2b379c3cfd6084b506fb446e571a7021598",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:addab78b-3d6c-93b5-f3d7-42995bdf793f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_pairwise_determinant_decoder :
    ¬∃ f : (Fin 3→Fin 3→ℝ)→ℝ, ∀ G : Matrix (Fin 3) (Fin 3) ℝ,
      G.PosDef → f (pairwiseProfile G)=G.det := by
  rintro ⟨f,hf⟩
  have hp := hf gramPlus gramPlus_posDef
  have hm := hf gramMinus gramMinus_posDef
  rw [pairwise_equal] at hp
  exact det_distinct (hp.symm.trans hm)

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8cbfe4c57c1ac114ff696cc989fce205e27efa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
