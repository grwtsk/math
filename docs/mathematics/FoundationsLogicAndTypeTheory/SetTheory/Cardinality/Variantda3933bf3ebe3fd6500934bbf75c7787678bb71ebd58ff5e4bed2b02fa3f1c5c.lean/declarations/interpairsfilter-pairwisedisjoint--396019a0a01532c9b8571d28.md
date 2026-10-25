# interPairsFilter_pairwiseDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d09e2c26-2cfc-33a5-ba75-2b5747229229",
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
  "slug": "interpairsfilter-pairwisedisjoint--396019a0a01532c9b8571d28",
  "source": {
    "blob": "7d8a0b6365da0797eb4f88e25b9f31a8252572ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396019a0a01532c9b8571d28454384643615a3d2cf9a307d145abaf48e8fc54b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d09e2c26-2cfc-33a5-ba75-2b5747229229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–112.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d8a0b6365da0797eb4f88e25b9f31a8252572ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
