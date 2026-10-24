# skewAdjointLieSubalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8319544b4fadff2fa2710027a902623134d76ecc281dcde70cc1f9f29234f6ac",
  "kind": "def",
  "lexical_name": "skewAdjointLieSubalgebra",
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
  "slug": "skewadjointliesubalgebra--dc7dcbcbdb1fac14beabdce0",
  "source": {
    "blob": "45df81f4957206bb923db30886e655a133e5f2b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc7dcbcbdb1fac14beabdce05ba0bf87cf14ba19d7a3d507df55714d7b13d8ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8319544b4fadff2fa2710027a902623134d76ecc281dcde70cc1f9f29234f6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skewAdjointLieSubalgebra : LieSubalgebra R (Module.End R M) :=
  { B.skewAdjointSubmodule with
    lie_mem' := B.isSkewAdjoint_bracket }

variable {N : Type w} [AddCommGroup N] [Module R N] (e : N ≃ₗ[R] M)

/-- An equivalence of modules with bilinear forms gives equivalence of Lie algebras of skew-adjoint
endomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45df81f4957206bb923db30886e655a133e5f2b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
