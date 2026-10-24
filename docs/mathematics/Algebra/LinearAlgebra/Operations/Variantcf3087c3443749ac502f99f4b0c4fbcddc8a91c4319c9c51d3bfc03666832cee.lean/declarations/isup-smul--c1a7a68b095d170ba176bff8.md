# iSup_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b17a9cb-d8da-48f2-0dfb-6a04cebb5687",
  "kind": "theorem",
  "lexical_name": "iSup_smul",
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
  "slug": "isup-smul--c1a7a68b095d170ba176bff8",
  "source": {
    "blob": "cc3ae876f44a002be9803a5018be97525447f69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variantcf3087c3443749ac502f99f4b0c4fbcddc8a91c4319c9c51d3bfc03666832cee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a7a68b095d170ba176bff87b8b7b2a9e1db47880e8e5ac2d258486cd931dae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variantcf3087c3443749ac502f99f4b0c4fbcddc8a91c4319c9c51d3bfc03666832cee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b17a9cb-d8da-48f2-0dfb-6a04cebb5687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_smul {ι : Sort*} {t : ι → Submodule R A} {N : Submodule R M} :
    (⨆ i, t i) • N = ⨆ i, t i • N :=
  le_antisymm (smul_le.mpr fun t ht s hs ↦ iSup_induction _ (motive := (· • s ∈ _)) ht
    (fun i t ht ↦ mem_iSup_of_mem i <| smul_mem_smul ht hs)
    (by simp_rw [zero_smul]; apply zero_mem) fun x y ↦ by simp_rw [add_smul]; apply add_mem)
    (iSup_le fun i ↦ Submodule.smul_mono_left <| le_iSup _ i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variantcf3087c3443749ac502f99f4b0c4fbcddc8a91c4319c9c51d3bfc03666832cee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variantcf3087c3443749ac502f99f4b0c4fbcddc8a91c4319c9c51d3bfc03666832cee.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc3ae876f44a002be9803a5018be97525447f69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
