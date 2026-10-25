# initialPropToFVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a7be032e4d72a75bcebcb5b1412bd414837a8f319a2b00555efc9bd22cc47ef",
  "kind": "def",
  "lexical_name": "initialPropToFVar",
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
  "slug": "initialproptofvar--0250bf095a14b3b66f85a360",
  "source": {
    "blob": "d34f5eb32aee3e3b197dc9c213c98dc012213b7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 335,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0250bf095a14b3b66f85a360b8cefc6058be7304234ad1b854a131cb02d2374f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a7be032e4d72a75bcebcb5b1412bd414837a8f319a2b00555efc9bd22cc47ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initialPropToFVar : MetaM (ExprMap Expr) := do
  -- Visit decls in reverse order so that in case there are duplicates,
  -- earlier proofs are preferred
  (← getLCtx).foldrM (init := {}) fun decl m => do
    if !decl.isImplementationDetail then
      let ty := (← instantiateMVars decl.type).cleanupAnnotations
      if ← Meta.isProp ty then
        return m.insert ty decl.toExpr
    return m

/--
Generalizes the proofs in the type `e` and runs `k` in a local context with these propositions.
This continuation `k` is passed
1. an array of fvars for the propositions
2. an array of proof terms (extracted from `e`) that prove these propositions
3. the generalized `e`, which refers to these fvars

The `propToFVar` map is updated with the new proposition fvars.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d34f5eb32aee3e3b197dc9c213c98dc012213b7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
