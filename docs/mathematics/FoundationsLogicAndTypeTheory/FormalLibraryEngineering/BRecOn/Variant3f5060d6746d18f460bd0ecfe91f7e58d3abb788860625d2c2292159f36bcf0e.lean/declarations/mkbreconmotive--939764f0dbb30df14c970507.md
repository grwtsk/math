# mkBRecOnMotive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70c4fa427378c288c119786b17d864303f808ef3bfa194612c7c5c5eabd0be02",
  "kind": "def",
  "lexical_name": "mkBRecOnMotive",
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
  "slug": "mkbreconmotive--939764f0dbb30df14c970507",
  "source": {
    "blob": "24e63dca8a6878e21221fb6336a724e08d99bb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:939764f0dbb30df14c9705075798abecfb771001a44eb6fd840dcec31a13f533",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70c4fa427378c288c119786b17d864303f808ef3bfa194612c7c5c5eabd0be02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBRecOnMotive (recArgInfo : RecArgInfo) (value : Expr) (type : Expr) : MetaM Expr := do
  lambdaTelescope value fun xs _value => do
    let type ← instantiateForall type xs
    let (indexMajorArgs, otherArgs) := recArgInfo.pickIndicesMajor xs
    let motive ← mkForallFVars otherArgs type
    mkLambdaFVars indexMajorArgs motive

/--
Calculates the `.brecOn` functional argument corresponding to one structural recursive function.
The `value` is the function with (only) the fixed parameters moved into the context,
The `FType` is the expected type of the argument.
The `recArgInfos` is used to transform the body of the function to replace recursive calls with
uses of the `below` induction hypothesis.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e63dca8a6878e21221fb6336a724e08d99bb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
