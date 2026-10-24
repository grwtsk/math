# BinaryLogicMatrixCodec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:529d323f3a1af4fbdf54a2274135a80ff9da4b3896bf960e41d6da8057096e0f",
  "kind": "class",
  "lexical_name": "BinaryLogicMatrixCodec",
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
  "slug": "binarylogicmatrixcodec--087bc42c67ea8da1d22dd556",
  "source": {
    "blob": "224e9f18aa951a2f32ff70df08ba172b707bb4de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 13,
    "path": "GRWTSK/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:087bc42c67ea8da1d22dd556be2e167ec43c3127070df5299b80404de9d43f6b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:529d323f3a1af4fbdf54a2274135a80ff9da4b3896bf960e41d6da8057096e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class BinaryLogicMatrixCodec (α : Type) where
  rows : α -> Nat
  cols : α -> Nat
  encode : (x : α) -> BinaryLogicMatrix (rows x) (cols x)
  decode? : {rows cols : Nat} -> BinaryLogicMatrix rows cols -> Option α
  roundTrip : ∀ x : α, decode? (encode x) = some x

namespace BinaryLogicMatrixCodec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224e9f18aa951a2f32ff70df08ba172b707bb4de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
