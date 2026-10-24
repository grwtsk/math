# findUnusedHaves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e5c4332199820eca00afe711a927ee4169a3bb1ce2d6cc53b093a82f9ea9cde",
  "kind": "def",
  "lexical_name": "findUnusedHaves",
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
  "slug": "findunusedhaves--ffb7da8fe4e08253459fb711",
  "source": {
    "blob": "e8e6e6bd7d7704a537c1e2e4c66bbdc48e3b1e01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 235,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant32cecc1a48b6552c0ad18fbd06e437b8e64e2a109cdb045f3bb3a162af58e9f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffb7da8fe4e08253459fb7115e9a94bc53f26545738178d0fb7ea629611af379",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant32cecc1a48b6552c0ad18fbd06e437b8e64e2a109cdb045f3bb3a162af58e9f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e5c4332199820eca00afe711a927ee4169a3bb1ce2d6cc53b093a82f9ea9cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findUnusedHaves (e : Expr) : MetaM (Array MessageData) := do
  let res ← IO.mkRef #[]
  forEachExpr e fun e => do
    let some e := letFunAnnotation? e | return
    let Expr.app (Expr.lam n t b ..) _ .. := e | return
    if n.isInternal then return
    if b.hasLooseBVars then return
    let msg ← addMessageContextFull m!"unnecessary have {n.eraseMacroScopes} : {t}"
    res.modify (·.push msg)
  res.get

/-- A linter for checking that declarations don't have unused term mode have statements. We do not
tag this as `@[std_linter]` so that it is not in the default linter set as it is slow and an
uncommon problem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant32cecc1a48b6552c0ad18fbd06e437b8e64e2a109cdb045f3bb3a162af58e9f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant32cecc1a48b6552c0ad18fbd06e437b8e64e2a109cdb045f3bb3a162af58e9f4.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e6e6bd7d7704a537c1e2e4c66bbdc48e3b1e01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
