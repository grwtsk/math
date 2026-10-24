# kroneckerTMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1e3a4c24e4ce3f1ec7ef7d4a1a1279b87bd9c9446fbeca35d6d7d6cd0dd26ca",
  "kind": "def",
  "lexical_name": "kroneckerTMul",
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
  "slug": "kroneckertmul--bc858c79ac1e2ded313c0c49",
  "source": {
    "blob": "9442cbc727c333a0f299599ed667311f08681e41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 438,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantd28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc858c79ac1e2ded313c0c4917865420eee1cb2c327befdf1d81227e651826d1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variantd28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1e3a4c24e4ce3f1ec7ef7d4a1a1279b87bd9c9446fbeca35d6d7d6cd0dd26ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kroneckerTMul : Matrix l m α → Matrix n p β → Matrix (l × n) (m × p) (α ⊗[R] β) :=
  kroneckerMap (· ⊗ₜ ·)

@[inherit_doc kroneckerTMul]
scoped[Kronecker] infixl:100 " ⊗ₖₜ " => Matrix.kroneckerMap (TensorProduct.tmul _)

@[inherit_doc kroneckerTMul] scoped[Kronecker] notation:100 x " ⊗ₖₜ[" R "] " y:100 =>
  Matrix.kroneckerMap (TensorProduct.tmul R) x y

open scoped Kronecker

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variantd28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantd28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9442cbc727c333a0f299599ed667311f08681e41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
