# isAppOrForallOfConstP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2823df63edf56ad49c9673fb1678ef9958798cb72bfc04f72ac8231718395b6",
  "kind": "def",
  "lexical_name": "isAppOrForallOfConstP",
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
  "slug": "isapporforallofconstp--688d929ba02cb9833dcf8b05",
  "source": {
    "blob": "b0e266ab6c1e1c040862e1a4c24e45343785ee97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbed1ec40bf006e36041814ab569f3924cff0995e5107a1c489a87d58f62395dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:688d929ba02cb9833dcf8b05aeba92e75dc79ef374d9222a4d1bb165cf051d70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbed1ec40bf006e36041814ab569f3924cff0995e5107a1c489a87d58f62395dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2823df63edf56ad49c9673fb1678ef9958798cb72bfc04f72ac8231718395b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] partial def isAppOrForallOfConstP (p : Name → Bool) (type : Expr) : Bool :=
  match type.cleanupAnnotations.getAppFn' with
  | .const n _ => p n
  | .forallE _ _ body _ => isAppOrForallOfConstP p body
  | _ => false

/--
Returns `true` if `type` is an application of a constant `declName`, or a
forall with return type of the same form (i.e. of the form `∀ (x₀ : X₀) (x₁ : X₁) ⋯, declName ..`).

Runs `cleanupAnnotations` on `type` and `forallE` bodies, and ignores metadata in applications.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbed1ec40bf006e36041814ab569f3924cff0995e5107a1c489a87d58f62395dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbed1ec40bf006e36041814ab569f3924cff0995e5107a1c489a87d58f62395dd.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e266ab6c1e1c040862e1a4c24e45343785ee97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
