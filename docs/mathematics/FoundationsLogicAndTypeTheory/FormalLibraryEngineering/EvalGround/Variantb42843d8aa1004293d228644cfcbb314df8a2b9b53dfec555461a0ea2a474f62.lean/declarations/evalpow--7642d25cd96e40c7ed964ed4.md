# evalPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba971ee7029d43ff00c8d3354aecba1c76d0a9d55e22f9d9dd1b09a11f70c88e",
  "kind": "def",
  "lexical_name": "evalPow",
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
  "slug": "evalpow--7642d25cd96e40c7ed964ed4",
  "source": {
    "blob": "c409e1e357eb53da61b145b9d9cb2f8ad601c5c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantb42843d8aa1004293d228644cfcbb314df8a2b9b53dfec555461a0ea2a474f62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7642d25cd96e40c7ed964ed4cffa2f75ef2a5edcf8a6b9cd347c1a903c3c83c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantb42843d8aa1004293d228644cfcbb314df8a2b9b53dfec555461a0ea2a474f62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba971ee7029d43ff00c8d3354aecba1c76d0a9d55e22f9d9dd1b09a11f70c88e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalPow (maxExponent : Nat) (α β : Expr) (a b : Expr) : DSimpM Result :=
  match_expr β with
  | Nat => match_expr α with
    | Nat => evalPowNat maxExponent getNatValue? (· ^ ·) a b
    | Int => evalPowNat maxExponent getIntValue? (· ^ ·) a b
    | Rat => evalPowNat maxExponent getRatValue? (· ^ ·) a b
    | UInt8 => evalPowNat maxExponent getUInt8Value? (· ^ ·) a b
    | UInt16 => evalPowNat maxExponent getUInt16Value? (· ^ ·) a b
    | UInt32 => evalPowNat maxExponent getUInt32Value? (· ^ ·) a b
    | UInt64 => evalPowNat maxExponent getUInt64Value? (· ^ ·) a b
    | Int8 => evalPowNat maxExponent getInt8Value? (· ^ ·) a b
    | Int16 => evalPowNat maxExponent getInt16Value? (· ^ ·) a b
    | Int32 => evalPowNat maxExponent getInt32Value? (· ^ ·) a b
    | Int64 => evalPowNat maxExponent getInt64Value? (· ^ ·) a b
    | _ => return .rfl
  | Int => match_expr α with
    | Rat => evalPowInt maxExponent getRatValue? (· ^ ·) a b
    | _ => return .rfl
  | _ => return .rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantb42843d8aa1004293d228644cfcbb314df8a2b9b53dfec555461a0ea2a474f62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantb42843d8aa1004293d228644cfcbb314df8a2b9b53dfec555461a0ea2a474f62.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c409e1e357eb53da61b145b9d9cb2f8ad601c5c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
