# _root_.Lean.FVarId.isLetVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c271ab90a0a2c5d0c2334fabcf0be66bf6958213d5782c246288ecc856f500d",
  "kind": "def",
  "lexical_name": "_root_.Lean.FVarId.isLetVar",
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
  "slug": "root-lean-fvarid-isletvar--80956e8ae81542ec5dac377b",
  "source": {
    "blob": "b9743855e4f667c6fad1cee0803ee003e513baef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1061,
    "line": 1057,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80956e8ae81542ec5dac377bd298c1a99b0441758aef305165a6fef744e42da1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c271ab90a0a2c5d0c2334fabcf0be66bf6958213d5782c246288ecc856f500d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1057–1061.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.FVarId.isLetVar (fvarId : FVarId) (allowNondep : Bool := false) : MetaM Bool :=
  return (← fvarId.getDecl).isLet allowNondep

/-- Get the local declaration associated to the given `Expr` in the current local
context. Fails if the given expression is not a fvar or if no such declaration exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean#L1057).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9743855e4f667c6fad1cee0803ee003e513baef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
