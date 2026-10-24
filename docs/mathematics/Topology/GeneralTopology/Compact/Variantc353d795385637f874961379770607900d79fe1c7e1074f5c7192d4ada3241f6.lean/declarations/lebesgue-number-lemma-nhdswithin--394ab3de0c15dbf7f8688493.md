# lebesgue_number_lemma_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "512aea0cbf062b629ac0e53194bfafae2ca8a034",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df1c1cba-713b-b7b2-d0ea-563ba8a89e4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68fd2857-b3a2-e5ba-8755-416e1e450505",
  "kind": "theorem",
  "lexical_name": "lebesgue_number_lemma_nhdsWithin",
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
  "slug": "lebesgue-number-lemma-nhdswithin--394ab3de0c15dbf7f8688493",
  "source": {
    "blob": "512aea0cbf062b629ac0e53194bfafae2ca8a034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:394ab3de0c15dbf7f868849330602a438afb1494f8c17106e22e6c5a8132b60b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68fd2857-b3a2-e5ba-8755-416e1e450505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_lemma_nhdsWithin {U : α → Set α} (hK : IsCompact K)
    (hU : ∀ x ∈ K, U x ∈ 𝓝[K] x) : ∃ V ∈ 𝓤 α, ∀ x ∈ K, ∃ y, ball x V ∩ K ⊆ U y :=
  (lebesgue_number_lemma_nhds hK (fun x hx => Filter.mem_inf_principal'.1 (hU x hx))).imp
    fun _ ⟨V_uni, hV⟩ => ⟨V_uni, fun x hx => (hV x hx).imp fun _ hy => (inter_subset _ _ _).2 hy⟩

/-- Let `U : ι → Set α` be an open cover of a compact set `K`.
Then there exists an entourage `V`
such that for each `x ∈ K` its `V`-neighborhood is included in some `U i`.

Moreover, one can choose an entourage from a given basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `512aea0cbf062b629ac0e53194bfafae2ca8a034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
