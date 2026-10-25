# isErasedCompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c9acd57356d730a246459c765b36f7b5001c68ba7389a2f64fda67ed4638f01",
  "kind": "def",
  "lexical_name": "isErasedCompatible",
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
  "slug": "iserasedcompatible--205b714ebc0fcccd96c20c9f",
  "source": {
    "blob": "cf0b45db1d34d2f68cbbc22c0f89513e48680efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 339,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:205b714ebc0fcccd96c20c9f04c72e18e8b2ec9bf1350d1cd7d689ce0923af9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c9acd57356d730a246459c765b36f7b5001c68ba7389a2f64fda67ed4638f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isErasedCompatible (type : Expr) (predVars : Array Bool := #[]): CompilerM Bool :=
  go type predVars
where
  go (type : Expr) (predVars : Array Bool) : CompilerM Bool := do
    let type := type.headBeta
    match type with
    | .const ..        => return type.isErased
    | .sort ..         => return false
    | .mdata _ e       => go e predVars
    | .forallE _ t b _
    | .lam _ t b _     => go b (predVars.push <| isPredicateType t)
    | .app f _         => go f predVars
    | .bvar idx        => return predVars[predVars.size - idx - 1]!
    | .fvar fvarId     => return isPredicateType (← getType fvarId)
    | .proj .. | .mvar .. | .letE .. | .lit .. => unreachable!

/--
Return `true` if the given LCNF are equivalent.
`List Nat` and `(fun x => List x) Nat` are both equivalent.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0b45db1d34d2f68cbbc22c0f89513e48680efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
