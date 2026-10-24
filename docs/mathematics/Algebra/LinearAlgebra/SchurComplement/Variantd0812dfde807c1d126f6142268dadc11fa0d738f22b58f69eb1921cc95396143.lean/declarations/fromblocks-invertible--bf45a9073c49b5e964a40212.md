# fromBlocks₁₁Invertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61bc83bad40bcf36f93f169a6a0963af51ad65312e7cf49c237c9a9bb60bb677",
  "kind": "def",
  "lexical_name": "fromBlocks₁₁Invertible",
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
  "slug": "fromblocks-invertible--bf45a9073c49b5e964a40212",
  "source": {
    "blob": "63a5a216c3ed66af6a10637702bc0d666b89bf31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf45a9073c49b5e964a4021295b89187cb06e2281ba4e3707b0992e067040a3b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61bc83bad40bcf36f93f169a6a0963af51ad65312e7cf49c237c9a9bb60bb677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromBlocks₁₁Invertible (A : Matrix m m α) (B : Matrix m n α) (C : Matrix n m α)
    (D : Matrix n n α) [Invertible A] [Invertible (D - C * ⅟ A * B)] :
    Invertible (fromBlocks A B C D) := by
  -- we argue by symmetry
  letI := fromBlocks₂₂Invertible D C B A
  letI iDCBA :=
    submatrixEquivInvertible (fromBlocks D C B A) (Equiv.sumComm _ _) (Equiv.sumComm _ _)
  exact
    iDCBA.copy' _
      (fromBlocks (⅟ A + ⅟ A * B * ⅟ (D - C * ⅟ A * B) * C * ⅟ A) (-(⅟ A * B * ⅟ (D - C * ⅟ A * B)))
        (-(⅟ (D - C * ⅟ A * B) * C * ⅟ A)) (⅟ (D - C * ⅟ A * B)))
      (fromBlocks_submatrix_sum_swap_sum_swap _ _ _ _).symm
      (fromBlocks_submatrix_sum_swap_sum_swap _ _ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5a216c3ed66af6a10637702bc0d666b89bf31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
