# mkExistsList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe6f3217cdac18de213d48de676a8315cd13daa66052aaa4a7a19c5309de6212",
  "kind": "def",
  "lexical_name": "mkExistsList",
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
  "slug": "mkexistslist--434645c22f9fa04635a9aae4",
  "source": {
    "blob": "69231d1701ca08e19c15c06fd8a26d085c5ffec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:434645c22f9fa04635a9aae483f0e899634d962576531afb1468627a2052b63f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe6f3217cdac18de213d48de676a8315cd13daa66052aaa4a7a19c5309de6212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkExistsList (args : List Expr) (inner : Expr) : MetaM Expr :=
  args.foldrM
    (fun arg i:Expr => do
      let t ← inferType arg
      let l := (← inferType t).sortLevel!
      if arg.occurs i || l != Level.zero
        then pure (mkApp2 (.const `Exists [l]) t
          (updateLambdaBinderInfoD! <| ← mkLambdaFVars #[arg] i))
        else pure <| mkApp2 (mkConst `And) t i)
    inner

/-- `mkOpList op empty [x1, x2, ...]` is defined as `op x1 (op x2 ...)`.
  Returns `empty` if the list is empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69231d1701ca08e19c15c06fd8a26d085c5ffec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
