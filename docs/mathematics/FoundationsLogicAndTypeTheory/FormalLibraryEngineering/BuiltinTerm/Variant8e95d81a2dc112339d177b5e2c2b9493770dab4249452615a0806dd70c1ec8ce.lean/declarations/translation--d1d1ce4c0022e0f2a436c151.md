# translation.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89ab5de2eaf1e8401161974c4678c91920b28b66db8e3c06a8239f74eefc0fcc",
  "kind": "instance",
  "lexical_name": "translation.",
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
  "slug": "translation--d1d1ce4c0022e0f2a436c151",
  "source": {
    "blob": "97892747116bee67ed7f742a8664a6a43543e851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 369,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1d1ce4c0022e0f2a436c151d0646566a6f66efd2054262671277a8f6666b9af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89ab5de2eaf1e8401161974c4678c91920b28b66db8e3c06a8239f74eefc0fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
        instance translation. If you do not intend to transport instances between two types, \
        consider using `inferInstance` or `(inferInstance : expectedType)` instead.")
  let type ← withSynthesize do
    let type ← elabType typeStx
    -- Unify with expected type to resolve metavariables (e.g., `_` placeholders)
    discard <| isDefEq type expectedType
    return type
  -- Re-infer instance-implicit args, so that synthesis is not influenced by the expected type's
  -- instance choices.
  let type ← withSynthesize <| resynthInstImplicitArgs type
  let type ← instantiateMVars type
  let inst ← synthInstance type
  let inst ← if backward.inferInstanceAs.wrap.get (← getOptions) then
    -- Wrap instance so its type matches the expected type exactly.
    let logCompileErrors := !(← read).isNoncomputableSection && !(← read).declName?.any (Lean.isNoncomputable (← getEnv))
    let isMeta := (← read).declName?.any (isMarkedMeta (← getEnv))
    wrapInstance inst expectedType (logCompileErrors := logCompileErrors) (isMeta := isMeta)
  else
    pure inst
  ensureHasType expectedType? inst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97892747116bee67ed7f742a8664a6a43543e851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
