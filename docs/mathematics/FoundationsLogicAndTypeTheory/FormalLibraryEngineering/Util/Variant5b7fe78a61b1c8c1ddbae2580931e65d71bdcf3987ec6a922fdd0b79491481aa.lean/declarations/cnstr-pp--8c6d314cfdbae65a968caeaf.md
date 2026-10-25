# Cnstr.pp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8dc52f1d592743837e7ca7b690a3fb973cc1ad9f5b20c085efa374683587fbb",
  "kind": "def",
  "lexical_name": "Cnstr.pp",
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
  "slug": "cnstr-pp--8c6d314cfdbae65a968caeaf",
  "source": {
    "blob": "2223e7175c34c63386e1ee294346b1628e42e661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5b7fe78a61b1c8c1ddbae2580931e65d71bdcf3987ec6a922fdd0b79491481aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c6d314cfdbae65a968caeafe7cd5ccb59de5049133bf468171feed427c2bba5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5b7fe78a61b1c8c1ddbae2580931e65d71bdcf3987ec6a922fdd0b79491481aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8dc52f1d592743837e7ca7b690a3fb973cc1ad9f5b20c085efa374683587fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cnstr.pp (c : Cnstr NodeId) : OrderM MessageData := do
  let u ← getExpr c.u
  let v ← getExpr c.v
  let op := match c.kind with
    | .le => "≤"
    | .lt => "<"
  if c.k != 0 then
    return m!"{Arith.quoteIfArithTerm u} {op} {Arith.quoteIfArithTerm v} + {c.k}"
  else
    return m!"{Arith.quoteIfArithTerm u} {op} {Arith.quoteIfArithTerm v}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5b7fe78a61b1c8c1ddbae2580931e65d71bdcf3987ec6a922fdd0b79491481aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5b7fe78a61b1c8c1ddbae2580931e65d71bdcf3987ec6a922fdd0b79491481aa.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2223e7175c34c63386e1ee294346b1628e42e661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
