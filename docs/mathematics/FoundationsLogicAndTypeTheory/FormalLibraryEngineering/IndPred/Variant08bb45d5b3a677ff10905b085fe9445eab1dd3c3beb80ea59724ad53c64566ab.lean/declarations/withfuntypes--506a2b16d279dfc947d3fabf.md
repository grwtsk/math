# withFunTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70a383fa70ca9d35bba0ad3d9e5616a16a54071c38edf16fb83538def345fff3",
  "kind": "def",
  "lexical_name": "withFunTypes",
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
  "slug": "withfuntypes--506a2b16d279dfc947d3fabf",
  "source": {
    "blob": "9e4c0a308e3b40b24dfe556d263a576d38c5a954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:506a2b16d279dfc947d3fabf745a5cd928772e987fc053f550f316de2555162e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70a383fa70ca9d35bba0ad3d9e5616a16a54071c38edf16fb83538def345fff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def withFunTypes (values : Array Expr) (k : Array Expr → MetaM α) : MetaM α := do
  go 0 #[]
where
  go (i : Nat) (res : Array Expr) : MetaM α :=
    if h : i < values.size then
      lambdaTelescope values[i] fun xs value => do
        let type := (← inferType value).headBeta
        let funType ← mkLambdaFVars xs type
        withLetDecl ((`funType).appendIndexAfter (i + 1)) (← inferType funType) funType
          fun funType => go (i + 1) (res.push funType)
    else
      k res
  termination_by values.size - i

/--
Calculates the `.brecOn` motive corresponding to one structural recursive function.
The `value` is the function with (only) the fixed parameters moved into the context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e4c0a308e3b40b24dfe556d263a576d38c5a954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
