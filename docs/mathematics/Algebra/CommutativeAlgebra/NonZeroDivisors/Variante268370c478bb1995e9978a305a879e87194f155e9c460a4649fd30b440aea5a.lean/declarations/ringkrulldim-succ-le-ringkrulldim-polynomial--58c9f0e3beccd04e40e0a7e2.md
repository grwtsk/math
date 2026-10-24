# ringKrullDim_succ_le_ringKrullDim_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8759ab50-4413-c172-0b9d-d1813947bf16",
  "kind": "lemma",
  "lexical_name": "ringKrullDim_succ_le_ringKrullDim_polynomial",
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
  "slug": "ringkrulldim-succ-le-ringkrulldim-polynomial--58c9f0e3beccd04e40e0a7e2",
  "source": {
    "blob": "9489a44059a3893c77bc2598ff5ef39df1acca45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58c9f0e3beccd04e40e0a7e25934bc10b73267c076afdf7f813cd42e95162327",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8759ab50-4413-c172-0b9d-d1813947bf16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ringKrullDim_succ_le_ringKrullDim_polynomial :
    ringKrullDim R + 1 ≤ ringKrullDim R[X] :=
  ringKrullDim_succ_le_of_surjective constantCoeff (⟨C ·, coeff_C_zero⟩)
    X_mem_nonzeroDivisors coeff_X_zero

open MvPolynomial in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9489a44059a3893c77bc2598ff5ef39df1acca45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
