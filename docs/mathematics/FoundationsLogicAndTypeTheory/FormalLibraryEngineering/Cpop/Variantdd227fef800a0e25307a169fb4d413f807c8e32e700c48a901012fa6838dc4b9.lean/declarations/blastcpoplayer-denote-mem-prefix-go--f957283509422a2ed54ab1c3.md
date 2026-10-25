# blastCpopLayer_denote_mem_prefix.go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1812ff626310aec0f5bcd39aac1cb04d417fdb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f6fc890-9f98-3ef7-5e5c-091b6de11917",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:188cfbf9-500b-06f4-b435-4e523d2d2605",
  "kind": "theorem",
  "lexical_name": "blastCpopLayer_denote_mem_prefix.go",
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
  "slug": "blastcpoplayer-denote-mem-prefix-go--f957283509422a2ed54ab1c3",
  "source": {
    "blob": "d1812ff626310aec0f5bcd39aac1cb04d417fdb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f957283509422a2ed54ab1c3af4d1780ef1489f04469b02d2a1af0f621d1b4ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:188cfbf9-500b-06f4-b435-4e523d2d2605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blastCpopLayer_denote_mem_prefix.go (aig : AIG α) (iterNum : Nat)  (hstart : _)
    (hold' : 2 * (iterNum - 1) < len)
    (oldLayer : AIG.RefVec aig (len * w)) (newLayer : AIG.RefVec aig (iterNum * w)) :
    ⟦
      (blastCpopLayer.go (outWidth := (len + 1) / 2 * w) iterNum oldLayer newLayer hold' (by rfl)).aig,
      ⟨start, inv, by apply Nat.lt_of_lt_of_le; exact hstart; apply blastCpopLayer.go_le_size⟩,
      assign
    ⟧ = ⟦aig, ⟨start, inv, hstart⟩, assign⟧ := by
  apply denote.eq_of_isPrefix (entry := ⟨aig, start, inv, hstart⟩)
  apply IsPrefix.of
  · intros
    apply blastCpopLayer.go_decl_eq
  · intros
    apply blastCpopLayer.go_le_size

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1812ff626310aec0f5bcd39aac1cb04d417fdb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
