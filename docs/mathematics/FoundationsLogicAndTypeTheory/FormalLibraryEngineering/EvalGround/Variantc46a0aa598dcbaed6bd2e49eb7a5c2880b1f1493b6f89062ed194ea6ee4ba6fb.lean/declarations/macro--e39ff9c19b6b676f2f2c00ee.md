# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f1ef786f99f82efad317ee532f203fe4ff7f0b17475cf80b4d5ece288f4786e",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--e39ff9c19b6b676f2f2c00ee",
  "source": {
    "blob": "3056fdbb91bdb8d3176700b4d981db159396bf9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 335,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e39ff9c19b6b676f2f2c00ee614f4ded842efe615986d3efc9be882beef773e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f1ef786f99f82efad317ee532f203fe4ff7f0b17475cf80b4d5ece288f4786e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro "declare_eval_bin_bool_pred" id:ident op:term : command =>
  `(def $id:ident (α : Expr) (a b : Expr) : DSimpM Result :=
  match_expr α with
  | Nat => evalBinBoolPredNat $op a b
  | Int => evalBinBoolPredInt $op a b
  | Rat => evalBinBoolPredRat $op a b
  | Fin _ => evalBinBoolPredFin $op a b
  | BitVec _ => evalBinBoolPredBitVec $op a b
  | UInt8 => evalBinBoolPredUInt8 $op a b
  | UInt16 => evalBinBoolPredUInt16 $op a b
  | UInt32 => evalBinBoolPredUInt32 $op a b
  | UInt64 => evalBinBoolPredUInt64 $op a b
  | Int8 => evalBinBoolPredInt8 $op a b
  | Int16 => evalBinBoolPredInt16 $op a b
  | Int32 => evalBinBoolPredInt32 $op a b
  | Int64 => evalBinBoolPredInt64 $op a b
  | _ => return .rfl
  )

declare_eval_bin_bool_pred evalBEq (· == ·)
declare_eval_bin_bool_pred evalBNe (· != ·)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantc46a0aa598dcbaed6bd2e49eb7a5c2880b1f1493b6f89062ed194ea6ee4ba6fb.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3056fdbb91bdb8d3176700b4d981db159396bf9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
