# preDefsFromUnaryNonRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c66799b28d2da12bb0afaf8b0cf0436239f18b86d26b224eee21d882e278cb26",
  "kind": "def",
  "lexical_name": "preDefsFromUnaryNonRec",
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
  "slug": "predefsfromunarynonrec--09140f344c6160e8d148683b",
  "source": {
    "blob": "f4e2c9f92076cb8f31efcf7dd9dde526049fdcf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09140f344c6160e8d148683b6d1af3bddf7f512c57034939efc7184b40c71f9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c66799b28d2da12bb0afaf8b0cf0436239f18b86d26b224eee21d882e278cb26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preDefsFromUnaryNonRec (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker)
    (preDefs : Array PreDefinition) (unaryPreDefNonRec : PreDefinition) : MetaM (Array PreDefinition) := do
  withoutModifyingEnv do
    let us := unaryPreDefNonRec.levelParams.map mkLevelParam
    addAsAxiom unaryPreDefNonRec
    preDefs.mapIdxM fun fidx preDef => do
      let arity := fixedParamPerms.perms[fidx]!.size
      let value ← forallBoundedTelescope preDef.type (some arity) fun params _ => do
        assert! arity = params.size
        let xs := fixedParamPerms.perms[fidx]!.pickFixed params
        let ys := fixedParamPerms.perms[fidx]!.pickVarying params
        let value := mkAppN (mkConst unaryPreDefNonRec.declName us) xs
        let value ← argsPacker.curryProj value fidx
        let value := value.beta ys
        mkLambdaFVars params value
      trace[Elab.definition.wf] "{preDef.declName} := {value}"
      pure { preDef with value }

end Lean.Elab.WF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e2c9f92076cb8f31efcf7dd9dde526049fdcf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
