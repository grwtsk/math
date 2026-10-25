# mkSimpTheoremsFromConst'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:899475c6ba853ee7de3410ad9b7fb61a200c8e07fc295180d614e99ac6adcaaf",
  "kind": "def",
  "lexical_name": "mkSimpTheoremsFromConst'",
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
  "slug": "mksimptheoremsfromconst--396f4e778a7a6ab32040aaa9",
  "source": {
    "blob": "7c3ea85cdd4a5d09eec44196e4290953411677c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:396f4e778a7a6ab32040aaa9cbedbe7b7fd906d21573ecc9d510ae7ee25bbd2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:899475c6ba853ee7de3410ad9b7fb61a200c8e07fc295180d614e99ac6adcaaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSimpTheoremsFromConst' (declName : Name) (post : Bool) (inv : Bool) (prio : Nat) :
  MetaM (Array Name × Array SimpTheorem) := do
  let cinfo ← getConstInfo declName
  let val := mkConst declName (cinfo.levelParams.map mkLevelParam)
  withReducible do
    let type ← inferType val
    checkTypeIsProp type
    if inv || (← shouldPreprocess type) then
      let mut r := #[]
      let mut auxNames := #[]
      for (val, type) in (← preprocess val type inv (isGlobal := true)) do
        let auxName ← mkAuxLemma cinfo.levelParams type val
        auxNames := auxNames.push auxName
        r := r.push <| ← mkSimpTheoremCore (.decl declName)
          (mkConst auxName (cinfo.levelParams.map mkLevelParam)) #[] (mkConst auxName) post prio
      return (auxNames, r)
    else
      return (#[], #[← mkSimpTheoremCore (.decl declName) (mkConst declName <|
        cinfo.levelParams.map mkLevelParam) #[] (mkConst declName) post prio])

/-- Similar to `addSimpTheorem` except that it returns an array of all auto-generated
  simp-theorems. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c3ea85cdd4a5d09eec44196e4290953411677c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
