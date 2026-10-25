# evalDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:545e3ac682a9b379a8b30f86b88a0b8dd6c207b8f46485a03b9c8fcff30e86c6",
  "kind": "def",
  "lexical_name": "evalDiv",
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
  "slug": "evaldiv--9f89bfb9159d82eb4ec850dc",
  "source": {
    "blob": "3056fdbb91bdb8d3176700b4d981db159396bf9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f89bfb9159d82eb4ec850dc59e78242678be93d39009f95fc0ad1dc6c12b4f1",
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

Occurrence: `declaration:545e3ac682a9b379a8b30f86b88a0b8dd6c207b8f46485a03b9c8fcff30e86c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalDiv (e : Expr) (α : Expr) (a b : Expr) : DSimpM Result :=
  match_expr α with
  | Nat => evalBinNat (. / .) a b
  | Int => evalBinInt (. / .) a b
  | Rat => return skipIfUnchanged e (← evalBinRat (. / .) a b)
  | Fin _ => evalBinFin' (. / .) a b
  | BitVec _ => evalBinBitVec' (. / .) a b
  | UInt8 => evalBinUInt8 (. / .) a b
  | UInt16 => evalBinUInt16 (. / .) a b
  | UInt32 => evalBinUInt32 (. / .) a b
  | UInt64 => evalBinUInt64 (. / .) a b
  | Int8 => evalBinInt8 (. / .) a b
  | Int16 => evalBinInt16 (. / .) a b
  | Int32 => evalBinInt32 (. / .) a b
  | Int64 => evalBinInt64 (. / .) a b
  | _ => return .rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3056fdbb91bdb8d3176700b4d981db159396bf9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
