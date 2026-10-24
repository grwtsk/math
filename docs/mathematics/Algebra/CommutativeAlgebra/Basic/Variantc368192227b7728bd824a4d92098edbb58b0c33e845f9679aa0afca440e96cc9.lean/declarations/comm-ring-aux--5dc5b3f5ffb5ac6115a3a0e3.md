# comm_ring_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cdbd3f2542dc1182a11536d87f8cf801c5b2e055ec2d07cf65ae394e4f872c8",
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
  "slug": "comm-ring-aux--5dc5b3f5ffb5ac6115a3a0e3",
  "source": {
    "blob": "4d25bd72fc79af8863b108f61742c351bb5561bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 234,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dc5b3f5ffb5ac6115a3a0e3afbaafaebd7e63e91a7d80bebe4455ec6053ec90",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cdbd3f2542dc1182a11536d87f8cf801c5b2e055ec2d07cf65ae394e4f872c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def comm_ring_aux₁ : CommRing (𝕎 (MvPolynomial R ℚ)) :=
  (ghostEquiv' p (MvPolynomial R ℚ)).injective.commRing ghostFun ghostFun_zero ghostFun_one
    ghostFun_add ghostFun_mul ghostFun_neg ghostFun_sub ghostFun_nsmul ghostFun_zsmul
    ghostFun_pow ghostFun_natCast ghostFun_intCast

@[local instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d25bd72fc79af8863b108f61742c351bb5561bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
