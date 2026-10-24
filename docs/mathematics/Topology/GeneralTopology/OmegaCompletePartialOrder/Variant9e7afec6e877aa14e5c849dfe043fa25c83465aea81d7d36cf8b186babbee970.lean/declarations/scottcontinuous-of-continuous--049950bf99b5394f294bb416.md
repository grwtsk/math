# scottContinuous_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95199ebb6d38f26e3f8c2069275d03a02caa7989",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e38fe432-a9b8-28b7-25d6-73259d18cefb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f099195-b798-7321-c0de-cebdf2c95579",
  "kind": "theorem",
  "lexical_name": "scottContinuous_of_continuous",
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
  "slug": "scottcontinuous-of-continuous--049950bf99b5394f294bb416",
  "source": {
    "blob": "95199ebb6d38f26e3f8c2069275d03a02caa7989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:049950bf99b5394f294bb416e47ac4e7ea2e012c38fa3ac36e1267c6e800ef9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f099195-b798-7321-c0de-cebdf2c95579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scottContinuous_of_continuous {α β} [OmegaCompletePartialOrder α]
    [OmegaCompletePartialOrder β] (f : Scott α → Scott β) (hf : _root_.Continuous f) :
    OmegaCompletePartialOrder.ωScottContinuous f := by
  rw [ωScottContinuous_iff_monotone_map_ωSup]
  have h : Monotone f := fun x y h ↦ by
    have hf : IsUpperSet {x | ¬f x ≤ f y} := ((notBelow_isOpen (f y)).preimage hf).isUpperSet
    simpa only [mem_setOf_eq, le_refl, not_true, imp_false, not_not] using hf h
  refine ⟨h, fun c ↦ eq_of_forall_ge_iff fun z ↦ ?_⟩
  rcases (notBelow_isOpen z).preimage hf with hf''
  let hf' := hf''.monotone_map_ωSup.2
  specialize hf' c
  simp only [OrderHom.coe_mk, mem_preimage, notBelow, mem_setOf_eq] at hf'
  rw [← not_iff_not]
  simp only [ωSup_le_iff, hf', ωSup, iSup, sSup, mem_range, Chain.map_coe, Function.comp_apply,
    eq_iff_iff, not_forall, OrderHom.coe_mk]
  tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95199ebb6d38f26e3f8c2069275d03a02caa7989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
