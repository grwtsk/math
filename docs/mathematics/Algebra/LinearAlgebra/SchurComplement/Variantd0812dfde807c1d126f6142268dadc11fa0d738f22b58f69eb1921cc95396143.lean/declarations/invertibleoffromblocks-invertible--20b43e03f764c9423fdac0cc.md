# invertibleOfFromBlocks₂₂Invertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf515a1cf64b26b6ee97823cbced2f8ea95317dddb9af8688144b4d78e143574",
  "kind": "def",
  "lexical_name": "invertibleOfFromBlocks₂₂Invertible",
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
  "slug": "invertibleoffromblocks-invertible--20b43e03f764c9423fdac0cc",
  "source": {
    "blob": "63a5a216c3ed66af6a10637702bc0d666b89bf31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 293,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20b43e03f764c9423fdac0cc9bc571b23dfbf91e529bcc80df57b0f1bf6a9740",
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

Occurrence: `declaration:cf515a1cf64b26b6ee97823cbced2f8ea95317dddb9af8688144b4d78e143574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleOfFromBlocks₂₂Invertible (A : Matrix m m α) (B : Matrix m n α) (C : Matrix n m α)
    (D : Matrix n n α) [Invertible D] [Invertible (fromBlocks A B C D)] :
    Invertible (A - B * ⅟ D * C) := by
  suffices Invertible (fromBlocks (A - B * ⅟ D * C) 0 0 D) by
    exact (invertibleOfFromBlocksZero₁₂Invertible (A - B * ⅟ D * C) 0 D).1
  letI : Invertible (1 : Matrix n n α) := invertibleOne
  letI : Invertible (1 : Matrix m m α) := invertibleOne
  letI iDC : Invertible (fromBlocks 1 0 (⅟ D * C) 1 : Matrix (m ⊕ n) (m ⊕ n) α) :=
    fromBlocksZero₁₂Invertible _ _ _
  letI iBD : Invertible (fromBlocks 1 (B * ⅟ D) 0 1 : Matrix (m ⊕ n) (m ⊕ n) α) :=
    fromBlocksZero₂₁Invertible _ _ _
  letI iBDC := Invertible.copy ‹_› _ (fromBlocks_eq_of_invertible₂₂ A B C D).symm
  refine (iBD.mulLeft _).symm ?_
  exact (iDC.mulRight _).symm iBDC

/-- If a block matrix is invertible and so is its bottom left element, then so is the corresponding
Schur complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5a216c3ed66af6a10637702bc0d666b89bf31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
