# isOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d55b24fbf2b6b7bf09c05ca3921eedcbb8f9c51f376de97454c884b4c3c2dc98",
  "kind": "def",
  "lexical_name": "isOffset",
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
  "slug": "isoffset--48dd3c1c390d4b87e9bfebcd",
  "source": {
    "blob": "b830269c1aadae5176ccff6081b9cc028915e86f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48dd3c1c390d4b87e9bfebcd407d8a407ff5aa227058a71134a2e42d55dd88c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d55b24fbf2b6b7bf09c05ca3921eedcbb8f9c51f376de97454c884b4c3c2dc98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isOffset (e : Expr) : Bool :=
  match_expr e with
  | Nat.succ _ => true
  | HAdd.hAdd α _ _ _ _ b =>
    α.isConstOf ``Nat &&
    match_expr b with
    | OfNat.ofNat _ n _ => (n matches .lit (.natVal _))
    | _ => false
  | _ => false

/-- Variant of `isOffset?` that first checks if `declName` is `Nat.succ` or `HAdd.hAdd`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant4aa518483a653d83a0df6af57d890afeec7d0ba46a4a628cdb6b3424dbb35dc2.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b830269c1aadae5176ccff6081b9cc028915e86f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
