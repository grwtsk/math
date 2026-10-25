# getMatchWithScoreWithExtra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b9cf05c56dff30d8269bf1185e27885f078ab590e6d0c9ed4dd52af646b1b74",
  "kind": "def",
  "lexical_name": "getMatchWithScoreWithExtra",
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
  "slug": "getmatchwithscorewithextra--4e23a1c99366b8bb8e842bf9",
  "source": {
    "blob": "f70e61579572899e433ea009064c28e4e58187f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e23a1c99366b8bb8e842bf90e4c137a3bf67f50ee323790e826b8b6c9661a81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b9cf05c56dff30d8269bf1185e27885f078ab590e6d0c9ed4dd52af646b1b74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getMatchWithScoreWithExtra (d : RefinedDiscrTree α) (e : Expr) (unify : Bool)
    (allowRootStar : Bool := false) :
    MetaM (Array (Array α × Nat × Nat)) := do
  let result ← go e 0
  return result.qsort (·.2.1 > ·.2.1)
where
  /-- go -/
  go (e : Expr) (numIgnored : Nat) : MetaM (Array (Array α × Nat × Nat)) := do
  let result ← getMatchWithScore d e unify allowRootStar
  let result := result.map fun (a, b) => (a, b, numIgnored)
  match e with
  | .app e _ => return (← go e (numIgnored + 1)) ++ result
  | _ => return result

end Lean.Meta.RefinedDiscrTree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70e61579572899e433ea009064c28e4e58187f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
