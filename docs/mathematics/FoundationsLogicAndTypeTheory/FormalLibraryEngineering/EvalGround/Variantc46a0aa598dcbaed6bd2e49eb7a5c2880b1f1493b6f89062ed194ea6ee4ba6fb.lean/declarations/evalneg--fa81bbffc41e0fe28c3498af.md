# evalNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34a1e7e4583660840ed5e7d183175eeb0a45757b70647323dd1aed8ef96a5c1c",
  "kind": "def",
  "lexical_name": "evalNeg",
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
  "slug": "evalneg--fa81bbffc41e0fe28c3498af",
  "source": {
    "blob": "3056fdbb91bdb8d3176700b4d981db159396bf9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa81bbffc41e0fe28c3498af1d3b2247156dc9985ea8b524512f0af55182e4c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34a1e7e4583660840ed5e7d183175eeb0a45757b70647323dd1aed8ef96a5c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalNeg (α : Expr) (a : Expr) : DSimpM Result :=
  match_expr α with
  | Int => evalUnaryInt (- ·) a
  | Rat => evalUnaryRat (- ·) a
  | Fin _ => evalUnaryFin' (- ·) a
  | BitVec _ => evalUnaryBitVec' (- ·) a
  | UInt8 => evalUnaryUInt8 (- ·) a
  | UInt16 => evalUnaryUInt16 (- ·) a
  | UInt32 => evalUnaryUInt32 (- ·) a
  | UInt64 => evalUnaryUInt64 (- ·) a
  | Int8 => evalUnaryInt8 (- ·) a
  | Int16 => evalUnaryInt16 (- ·) a
  | Int32 => evalUnaryInt32 (- ·) a
  | Int64 => evalUnaryInt64 (- ·) a
  | _ => return .rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3056fdbb91bdb8d3176700b4d981db159396bf9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
