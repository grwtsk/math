# isConstantReplacement?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f3e718a9deef4b01fda7e59936dc2fa04fcba105c6dd550fce9234c12cdaf44",
  "kind": "def",
  "lexical_name": "isConstantReplacement?",
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
  "slug": "isconstantreplacement--0609d65a6740e7ddd1becd53",
  "source": {
    "blob": "9d60dfaaecec3b0195580a035a22b8e2fa3ebb61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CSimpAttr/Variant13da54e9d33ca9abf7ec91ac3e7fcf9bc424d3e6944f0c879a7bba9521fcedbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0609d65a6740e7ddd1becd53950c973009028d53878e51ae550cb1bb94df53a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CSimpAttr/Variant13da54e9d33ca9abf7ec91ac3e7fcf9bc424d3e6944f0c879a7bba9521fcedbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f3e718a9deef4b01fda7e59936dc2fa04fcba105c6dd550fce9234c12cdaf44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isConstantReplacement? (declName : Name) : CoreM (Option Entry) := do
  let info ← getConstVal declName
  match info.type.eq? with
  | some (_, Expr.const fromDeclName us, Expr.const toDeclName vs) =>
    let set := Std.HashSet.ofList us
    if set.size == us.length && set.all Level.isParam && us == vs then
      return some { fromDeclName, toDeclName, thmName := declName }
    else
      return none
  | _ => return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CSimpAttr/Variant13da54e9d33ca9abf7ec91ac3e7fcf9bc424d3e6944f0c879a7bba9521fcedbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CSimpAttr/Variant13da54e9d33ca9abf7ec91ac3e7fcf9bc424d3e6944f0c879a7bba9521fcedbc.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d60dfaaecec3b0195580a035a22b8e2fa3ebb61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
