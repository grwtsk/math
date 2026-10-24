# comm_ring_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a20ea4bab4c0ffaf9bdb436421501c9624b931b19a453fc3d4f3b531fb966081",
  "kind": "def",
  "lexical_name": "comm_ring_aux₁",
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
  "slug": "comm-ring-aux--c3c405f80f57bfbe4631b476",
  "source": {
    "blob": "967d4430c4fc192382369f22d680c3b101ca6a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 248,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3c405f80f57bfbe4631b47636abf8163f02c4cd6e01db5d1053deab6c12b87f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a20ea4bab4c0ffaf9bdb436421501c9624b931b19a453fc3d4f3b531fb966081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def comm_ring_aux₁ : CommRing (𝕎 (MvPolynomial R ℚ)) :=
  -- Porting note: no longer needed?
  -- letI : CommRing (MvPolynomial R ℚ) := MvPolynomial.commRing
  (ghostEquiv' p (MvPolynomial R ℚ)).injective.commRing ghostFun ghostFun_zero ghostFun_one
    ghostFun_add ghostFun_mul ghostFun_neg ghostFun_sub ghostFun_nsmul ghostFun_zsmul
    ghostFun_pow ghostFun_nat_cast ghostFun_int_cast

@[local instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `967d4430c4fc192382369f22d680c3b101ca6a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
