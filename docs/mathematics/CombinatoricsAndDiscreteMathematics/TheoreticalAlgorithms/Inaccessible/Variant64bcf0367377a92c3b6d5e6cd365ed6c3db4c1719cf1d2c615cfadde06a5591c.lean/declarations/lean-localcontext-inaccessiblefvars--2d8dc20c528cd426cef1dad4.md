# Lean.LocalContext.inaccessibleFVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:290c3a03fe7f89e3b9506d0e39cfc7bf29a30c9e98aa3136d365650641d052a8",
  "kind": "def",
  "lexical_name": "Lean.LocalContext.inaccessibleFVars",
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
  "slug": "lean-localcontext-inaccessiblefvars--2d8dc20c528cd426cef1dad4",
  "source": {
    "blob": "ab09e8c2633f2b99cbe1f20d78ca6a21fb01d5c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 10,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inaccessible/Variant64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d8dc20c528cd426cef1dad46a1999588865c2b65f03808d0648fab1e694f1e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inaccessible/Variant64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:290c3a03fe7f89e3b9506d0e39cfc7bf29a30c9e98aa3136d365650641d052a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.LocalContext.inaccessibleFVars (lctx : LocalContext) :
    Array LocalDecl :=
  let (result, _) :=
    lctx.foldr (β := Array LocalDecl × HashSet Name)
      (init := (Array.mkEmpty lctx.numIndices, {}))
      λ ldecl (result, seen) =>
        if ldecl.isImplementationDetail then
          (result, seen)
        else
          let result :=
            if ldecl.userName.hasMacroScopes || seen.contains ldecl.userName then
              result.push ldecl
            else
              result
          (result, seen.insert ldecl.userName)
  result.reverse

/--
Obtain the inaccessible fvars from the current local context. An fvar is
inaccessible if (a) its user name is inaccessible or (b) it is shadowed by a
later fvar with the same user name.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inaccessible/Variant64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inaccessible/Variant64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab09e8c2633f2b99cbe1f20d78ca6a21fb01d5c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
