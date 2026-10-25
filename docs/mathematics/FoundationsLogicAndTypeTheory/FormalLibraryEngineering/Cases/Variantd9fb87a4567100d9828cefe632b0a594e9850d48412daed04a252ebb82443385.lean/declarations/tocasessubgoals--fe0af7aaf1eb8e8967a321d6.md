# toCasesSubgoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d1cd9ffd4a4ffacc28b430b1e41a8793da00e26a79589e9265129a6dc82a523",
  "kind": "def",
  "lexical_name": "toCasesSubgoals",
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
  "slug": "tocasessubgoals--fe0af7aaf1eb8e8967a321d6",
  "source": {
    "blob": "28a0c4b825a83c9f24683c035aabcb13c8cc2651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe0af7aaf1eb8e8967a321d6b19451fbf1ed0ea0edbe5b332ab1de3cb9c1d098",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d1cd9ffd4a4ffacc28b430b1e41a8793da00e26a79589e9265129a6dc82a523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def toCasesSubgoals (s : Array InductionSubgoal) (ctorNames : Array Name) (majorFVarId : FVarId) (us : List Level) (params : Array Expr)
    : Array CasesSubgoal :=
  s.mapIdx fun i s =>
    if _ : i < ctorNames.size then
      let ctorName := ctorNames[i]
      let ctorApp  := mkAppN (mkAppN (mkConst ctorName us) params) s.fields
      let subst := s.subst.erase majorFVarId |>.insert majorFVarId ctorApp
      { s with ctorName := ctorName, subst}
    else
      { s with ctorName := none }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a0c4b825a83c9f24683c035aabcb13c8cc2651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
