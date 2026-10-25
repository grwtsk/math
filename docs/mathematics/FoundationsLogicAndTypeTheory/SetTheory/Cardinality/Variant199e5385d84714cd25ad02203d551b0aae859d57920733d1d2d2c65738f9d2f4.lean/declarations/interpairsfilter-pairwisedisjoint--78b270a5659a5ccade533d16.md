# interPairsFilter_pairwiseDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adfb26b64f255e49fbc037ca31ead88bb4a3e7dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5292c57f-79dd-12f6-956a-04467869107b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cda08a3d-3897-68e3-01a7-9f3fc08814aa",
  "kind": "theorem",
  "lexical_name": "interPairsFilter_pairwiseDisjoint",
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
  "slug": "interpairsfilter-pairwisedisjoint--78b270a5659a5ccade533d16",
  "source": {
    "blob": "adfb26b64f255e49fbc037ca31ead88bb4a3e7dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78b270a5659a5ccade533d1616a9cfb8e6fcbf423ca8a96d4219cc73d76cab74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cda08a3d-3897-68e3-01a7-9f3fc08814aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interPairsFilter_pairwiseDisjoint : Set.univ.Pairwise
    (fun s t : Set (Set α) => Disjoint (interPairsFilter s) (interPairsFilter t)) := by
  intro s _ t _ hst
  simp_rw [← symmDiff_nonempty, nonempty_def, mem_symmDiff] at hst
  rw [Filter.disjoint_iff]
  unfold interPairsFilter
  obtain ⟨x, hx | hx⟩ := hst
  · exact ⟨interPair x, Filter.mem_iInf_of_mem x
      (ite_eq_left hx.1 ▸ Filter.mem_principal_self (interPair x)),
      (interPair x)ᶜ, Filter.mem_iInf_of_mem x
      (ite_eq_right hx.2 ▸ Filter.mem_principal_self (interPair x)ᶜ),
      disjoint_compl_right⟩
  · exact ⟨(interPair x)ᶜ, Filter.mem_iInf_of_mem x
      (ite_eq_right hx.2 ▸ Filter.mem_principal_self (interPair x)ᶜ),
      interPair x, Filter.mem_iInf_of_mem x
      (ite_eq_left hx.1 ▸ Filter.mem_principal_self (interPair x)),
      disjoint_compl_left⟩

variable [Infinite α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adfb26b64f255e49fbc037ca31ead88bb4a3e7dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
