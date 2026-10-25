# hasUnusedForallBindersWhere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39641f3ac9a220f2a1aaca0c4e1f4662339ab2562564fe14f954ee14b0114ec5",
  "kind": "def",
  "lexical_name": "hasUnusedForallBindersWhere",
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
  "slug": "hasunusedforallbinderswhere--8ec85bb33aae793ae63c0c32",
  "source": {
    "blob": "9764bca588a0a855c1f87e1ba23b43a6d1a27a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedBinders/Variant9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ec85bb33aae793ae63c0c3239988f2423cb24ca484ba6ec67044a0d16ab4a0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedBinders/Variant9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39641f3ac9a220f2a1aaca0c4e1f4662339ab2562564fe14f954ee14b0114ec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def hasUnusedForallBindersWhere (p : BinderInfo → Expr → Bool) (e : Expr) : Bool :=
  match e.cleanupAnnotations with
  | .forallE _ type body bi =>
    p bi type && !(body.hasLooseBVar 0) || body.hasUnusedForallBindersWhere p
  /- See through `letE` -/
  | .letE _ _ _ body _ => body.hasUnusedForallBindersWhere p
  | _ => false

end Lean.Expr
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedBinders/Variant9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedBinders/Variant9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9764bca588a0a855c1f87e1ba23b43a6d1a27a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
