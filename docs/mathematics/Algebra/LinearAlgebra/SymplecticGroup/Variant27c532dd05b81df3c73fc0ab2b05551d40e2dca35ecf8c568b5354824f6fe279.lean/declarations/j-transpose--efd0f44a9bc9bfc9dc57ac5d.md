# J_transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:739683c4-a24f-62b7-f5d8-088b4b474098",
  "kind": "theorem",
  "lexical_name": "J_transpose",
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
  "slug": "j-transpose--efd0f44a9bc9bfc9dc57ac5d",
  "source": {
    "blob": "a2314db3cf665be627014849ca498b9395b10916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efd0f44a9bc9bfc9dc57ac5d29429b6a6b64b2048bf0e920f6ef1d3fccc68abe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:739683c4-a24f-62b7-f5d8-088b4b474098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem J_transpose : (J l R)ᵀ = -J l R := by
  rw [J, fromBlocks_transpose, ← neg_one_smul R (fromBlocks _ _ _ _ : Matrix (l ⊕ l) (l ⊕ l) R),
    fromBlocks_smul, Matrix.transpose_zero, Matrix.transpose_one, transpose_neg]
  simp [fromBlocks]

variable [Fintype l]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2314db3cf665be627014849ca498b9395b10916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
