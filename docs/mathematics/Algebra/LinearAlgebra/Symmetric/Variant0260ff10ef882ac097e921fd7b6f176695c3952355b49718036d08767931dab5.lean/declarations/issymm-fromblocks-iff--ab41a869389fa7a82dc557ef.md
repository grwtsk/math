# isSymm_fromBlocks_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31e73a19-c815-1a0f-4d0c-f5d53b0d2d61",
  "kind": "theorem",
  "lexical_name": "isSymm_fromBlocks_iff",
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
  "slug": "issymm-fromblocks-iff--ab41a869389fa7a82dc557ef",
  "source": {
    "blob": "67679201ff541991a25e750f03cfb5fd2c3fff40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab41a869389fa7a82dc557ef77ee39736a314761d8d8738db2948f3073b2afd6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31e73a19-c815-1a0f-4d0c-f5d53b0d2d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSymm_fromBlocks_iff {A : Matrix m m α} {B : Matrix m n α} {C : Matrix n m α}
    {D : Matrix n n α} : (A.fromBlocks B C D).IsSymm ↔ A.IsSymm ∧ Bᵀ = C ∧ Cᵀ = B ∧ D.IsSymm :=
  ⟨fun h =>
    ⟨(congr_arg toBlocks₁₁ h :), (congr_arg toBlocks₂₁ h :), (congr_arg toBlocks₁₂ h :),
      (congr_arg toBlocks₂₂ h :)⟩,
    fun ⟨hA, hBC, _, hD⟩ => IsSymm.fromBlocks hA hBC hD⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67679201ff541991a25e750f03cfb5fd2c3fff40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
