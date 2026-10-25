# reduceProjs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5b9f4877e606cdf8173eb5d8fac8d7e51a529f55f8f15dc8604418a9fe35a64",
  "kind": "def",
  "lexical_name": "reduceProjs",
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
  "slug": "reduceprojs--8b3bae737120dae54889a646",
  "source": {
    "blob": "a8bc9b1ae16006d604e21a84fd5de221cb9a2608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant0d5a7787649fc7e87ef0a965f48547c4590697101448e9e44d76c6c2e53d4402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b3bae737120dae54889a64698bc09c5f5530fd82c718af8ee214bd3e31d6fe6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant0d5a7787649fc7e87ef0a965f48547c4590697101448e9e44d76c6c2e53d4402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5b9f4877e606cdf8173eb5d8fac8d7e51a529f55f8f15dc8604418a9fe35a64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduceProjs (e : Expr) : MetaM Expr := do
  Core.transform e (post := fun e => do
    match_expr e with
    | PProd.fst _ _ e' => reduce e' 0
    | And.left _ _ e'  => reduce e' 0
    | PProd.snd _ _ e' => reduce e' 1
    | And.right _ _ e' => reduce e' 1
    | _ =>
        if e.isProj then
          reduce e.projExpr! e.projIdx!
        else
          return .continue
  )
where
  reduce (e : Expr) (i : Nat) : MetaM TransformStep := do
    if e.isAppOfArity ``PProd.mk 4 || e.isAppOfArity ``And.intro 2 then
      if i = 0 then
        return .continue e.appFn!.appArg!
      else
        return .continue e.appArg!
    return .continue

end PProdN

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant0d5a7787649fc7e87ef0a965f48547c4590697101448e9e44d76c6c2e53d4402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant0d5a7787649fc7e87ef0a965f48547c4590697101448e9e44d76c6c2e53d4402.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8bc9b1ae16006d604e21a84fd5de221cb9a2608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
