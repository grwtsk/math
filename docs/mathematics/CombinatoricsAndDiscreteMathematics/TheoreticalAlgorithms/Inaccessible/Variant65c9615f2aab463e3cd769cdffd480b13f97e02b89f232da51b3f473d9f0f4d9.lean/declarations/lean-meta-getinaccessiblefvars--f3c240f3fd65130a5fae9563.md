# Lean.Meta.getInaccessibleFVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cf5a232fc5b0671b0f9f89ed34987df98cf7934de288d9f1af5b12c26129c87",
  "kind": "def",
  "lexical_name": "Lean.Meta.getInaccessibleFVars",
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
  "slug": "lean-meta-getinaccessiblefvars--f3c240f3fd65130a5fae9563",
  "source": {
    "blob": "b6a7c69a91ef8422560afd95396eeb519b05e97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inaccessible/Variant65c9615f2aab463e3cd769cdffd480b13f97e02b89f232da51b3f473d9f0f4d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3c240f3fd65130a5fae9563db1f07db70aa70b52fd5ea6a3f15e2eab1f8c8c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inaccessible/Variant65c9615f2aab463e3cd769cdffd480b13f97e02b89f232da51b3f473d9f0f4d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cf5a232fc5b0671b0f9f89ed34987df98cf7934de288d9f1af5b12c26129c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Meta.getInaccessibleFVars [Monad m] [MonadLCtx m] :
    m (Array LocalDecl) :=
  return (← getLCtx).inaccessibleFVars

/--
Rename all inaccessible fvars. An fvar is inaccessible if (a) its user name is
inaccessible or (b) it is shadowed by a later fvar with the same user name. This
function gives all inaccessible fvars a unique, accessible user name. It returns
the new goal and the fvars that were renamed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inaccessible/Variant65c9615f2aab463e3cd769cdffd480b13f97e02b89f232da51b3f473d9f0f4d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inaccessible/Variant65c9615f2aab463e3cd769cdffd480b13f97e02b89f232da51b3f473d9f0f4d9.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a7c69a91ef8422560afd95396eeb519b05e97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
