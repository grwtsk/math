# isLeftInversion_of_mem_leftInvSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5e05a1df8da8076069ec5eb97025aa0c60560c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38ab4f5c-5a62-9f6b-953a-81a1c7ac0656",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f24e077-f27a-d773-91b8-2e4c1b7a330a",
  "kind": "theorem",
  "lexical_name": "isLeftInversion_of_mem_leftInvSeq",
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
  "slug": "isleftinversion-of-mem-leftinvseq--cfe7b85b84d4f3bd04e0417b",
  "source": {
    "blob": "a5e05a1df8da8076069ec5eb97025aa0c60560c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe7b85b84d4f3bd04e0417bd03f37d9460ea206a5d65fc2c48953533b37a7e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f24e077-f27a-d773-91b8-2e4c1b7a330a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLeftInversion_of_mem_leftInvSeq {ω : List B} (hω : cs.IsReduced ω) {t : W}
    (ht : t ∈ lis ω) : cs.IsLeftInversion (π ω) t := by
  constructor
  · exact cs.isReflection_of_mem_leftInvSeq ω ht
  · obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ht
    rw [← List.getD_eq_getElem _ 1 hj, getD_leftInvSeq_mul_wordProd]
    rw [cs.length_leftInvSeq] at hj
    calc
      ℓ (π (ω.eraseIdx j))
      _ ≤ (ω.eraseIdx j).length := cs.length_wordProd_le _
      _ < ω.length := by rw [← List.length_eraseIdx_add_one hj]; exact lt_add_one _
      _ = ℓ (π ω) := hω.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5e05a1df8da8076069ec5eb97025aa0c60560c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
