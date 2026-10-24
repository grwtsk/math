# homotopicTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fcf7de8-daad-fbd6-185d-11e9406972d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8860251f-1517-159b-659c-389b12c3c555",
  "kind": "theorem",
  "lexical_name": "homotopicTo",
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
  "slug": "homotopicto--adce89dfbcfcba9c4151e3d9",
  "source": {
    "blob": "0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 348,
    "path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adce89dfbcfcba9c4151e3d90f0b3132430852c7aec9e72752ac6269c1d3e5c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8860251f-1517-159b-659c-389b12c3c555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homotopicTo (i : N) {p q : Ω^ N X x} :
    Homotopic p q → (toLoop i p).Homotopic (toLoop i q) := by
  refine Nonempty.map fun H ↦ ⟨⟨⟨fun t ↦ ⟨homotopyTo i H t, ?_⟩, ?_⟩, ?_, ?_⟩, ?_⟩
  · rintro y ⟨i, iH⟩
    rw [homotopyTo_apply, H.eq_fst, p.2]
    all_goals apply Cube.insertAt_boundary; right; exact ⟨i, iH⟩
  · fun_prop
  iterate 2
    intro
    ext
    dsimp
    rw [homotopyTo_apply, toLoop_apply]
    swap
  · apply H.apply_zero
  · apply H.apply_one
  intro t y yH
  ext
  dsimp
  rw [homotopyTo_apply]
  apply H.eq_fst; use i
  rw [funSplitAt_symm_apply, dite_eq_left rfl]; exact yH

/-- The converse to `GenLoop.homotopyTo`: a homotopy between two loops in the space of
  `n`-dimensional loops can be seen as a homotopy between two `n+1`-dimensional paths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
