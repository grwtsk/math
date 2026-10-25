# constructorApp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35efe1837d7bd1721d7ab97360e6e2901354a63e35e72a02569b7b2fafcc3cb4",
  "kind": "def",
  "lexical_name": "constructorApp?",
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
  "slug": "constructorapp--41e841b8889baa19c9dfee15",
  "source": {
    "blob": "289824870d48f73ed8238968dc433e354356cc63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorRecognizer/Variant1702e73c93bb81c978001a8206f6b22ec35186ed5f9e8313c70799a9b4b453cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41e841b8889baa19c9dfee1568966887d73e797f724a8240fcee67ca2744d9b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorRecognizer/Variant1702e73c93bb81c978001a8206f6b22ec35186ed5f9e8313c70799a9b4b453cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35efe1837d7bd1721d7ab97360e6e2901354a63e35e72a02569b7b2fafcc3cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constructorApp? (e : Expr) : MetaM (Option (ConstructorVal × Array Expr)) := do
  let e ← litToCtor e
  let .const declName _ := e.getAppFn | return none
  let some v := getConstructorVal? (← getEnv) declName | return none
  if v.numParams + v.numFields == e.getAppNumArgs then
    return some (v, e.getAppArgs)
  else
    return none

/--
Similar to `constructorApp?`, but on failure it puts `e` in WHNF and tries again.
It also uses `isOffset?` for `Nat`.

See also `Lean.Meta.isConstructorApp'?`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorRecognizer/Variant1702e73c93bb81c978001a8206f6b22ec35186ed5f9e8313c70799a9b4b453cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorRecognizer/Variant1702e73c93bb81c978001a8206f6b22ec35186ed5f9e8313c70799a9b4b453cb.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `289824870d48f73ed8238968dc433e354356cc63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
