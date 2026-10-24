# quotTensorEquivQuotSMul_symm_comp_mkQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ab8c947-d60c-a183-14c4-e7452b7d5692",
  "kind": "lemma",
  "lexical_name": "quotTensorEquivQuotSMul_symm_comp_mkQ",
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
  "slug": "quottensorequivquotsmul-symm-comp-mkq--6515ffc1ef83480738f63155",
  "source": {
    "blob": "12870239cd138485283f4215f779a049479a713e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 202,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6515ffc1ef83480738f63155db3c2616e2a2f3a173c7820b520639a19f5cebeb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ab8c947-d60c-a183-14c4-e7452b7d5692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotTensorEquivQuotSMul_symm_comp_mkQ (I : Ideal R) :
    (quotTensorEquivQuotSMul M I).symm ∘ₗ (I • ⊤ : Submodule R M).mkQ =
      TensorProduct.mk R (R ⧸ I) M 1 :=
  LinearMap.ext (quotTensorEquivQuotSMul_symm_mk I)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12870239cd138485283f4215f779a049479a713e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
