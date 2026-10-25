# forallAltTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29cbb3c615aaed41bffb309fd0f9eca30ddfff9b352a2b251bbeed30c04837f1",
  "kind": "def",
  "lexical_name": "forallAltTelescope",
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
  "slug": "forallalttelescope--4ecf6f833f2b26762ec98d91",
  "source": {
    "blob": "950a1975db89406a0638188d25853f4b49456a5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AltTelescopes/Variant5e1e578a3fd111b1bcf959dd8e2c2ace689430e099bcc4d29b88f640a10532d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ecf6f833f2b26762ec98d9154a68965e53c30a44cc27e6bcc71d7d11ae4d476",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AltTelescopes/Variant5e1e578a3fd111b1bcf959dd8e2c2ace689430e099bcc4d29b88f640a10532d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29cbb3c615aaed41bffb309fd0f9eca30ddfff9b352a2b251bbeed30c04837f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def forallAltTelescope (altType : Expr) (altInfo : AltParamInfo) (numDiscrEqs : Nat)
    (k : (ys : Array Expr) → (eqs : Array Expr) → (args : Array Expr) → (mask : Array Bool) → (type : Expr) → MetaM α)
    : MetaM α := do
  forallAltVarsTelescope altType altInfo fun ys args mask altType => do
    go ys #[] args mask 0 altType
where
  go (ys : Array Expr) (eqs : Array Expr) (args : Array Expr) (mask : Array Bool) (i : Nat) (type : Expr) : MetaM α := do
    let type ← whnfForall type
    if i < numDiscrEqs then
      let Expr.forallE n d b .. := type
        | throwError "expecting {numDiscrEqs} equalities, but found type{indentExpr altType}"
      let arg ← if let some (_, _, rhs) ← matchEq? d then
        mkEqRefl rhs
      else if let some (_, _, _, rhs) ← matchHEq? d then
        mkHEqRefl rhs
      else
        throwError "unexpected match alternative type{indentExpr altType}"
      withLocalDeclD n d fun eq => do
        let typeNew := b.instantiate1 eq
        go ys (eqs.push eq) (args.push arg) (mask.push false) (i+1) typeNew
    else
      let type ← unfoldNamedPattern type
      k ys eqs args mask type
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AltTelescopes/Variant5e1e578a3fd111b1bcf959dd8e2c2ace689430e099bcc4d29b88f640a10532d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AltTelescopes/Variant5e1e578a3fd111b1bcf959dd8e2c2ace689430e099bcc4d29b88f640a10532d0.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `950a1975db89406a0638188d25853f4b49456a5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
