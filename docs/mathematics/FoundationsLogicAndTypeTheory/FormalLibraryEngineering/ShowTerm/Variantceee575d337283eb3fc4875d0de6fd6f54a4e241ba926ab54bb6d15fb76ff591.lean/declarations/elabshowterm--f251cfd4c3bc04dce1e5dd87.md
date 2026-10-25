# elabShowTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:793ef66004112605bd05cdc47598e0bf868e50357bd9b10d6d0513266af392d2",
  "kind": "def",
  "lexical_name": "elabShowTerm",
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
  "slug": "elabshowterm--f251cfd4c3bc04dce1e5dd87",
  "source": {
    "blob": "12e13fc6d4a329774a4f82e3e8bbf57d452f1d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowTerm/Variantceee575d337283eb3fc4875d0de6fd6f54a4e241ba926ab54bb6d15fb76ff591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f251cfd4c3bc04dce1e5dd879f0222af90ebbfa737bd059c570490fec084303a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowTerm/Variantceee575d337283eb3fc4875d0de6fd6f54a4e241ba926ab54bb6d15fb76ff591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:793ef66004112605bd05cdc47598e0bf868e50357bd9b10d6d0513266af392d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab showTermElabImpl] def elabShowTerm : TermElab
  | `(show_term_elab%$tk $t), ty => do
    let e ← Term.elabTermEnsuringType t ty
    Term.synthesizeSyntheticMVarsNoPostponing
    addTermSuggestion tk (← instantiateMVars e).headBeta (origSpan? := ← getRef)
    pure e
  | _, _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.ShowTerm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowTerm/Variantceee575d337283eb3fc4875d0de6fd6f54a4e241ba926ab54bb6d15fb76ff591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowTerm/Variantceee575d337283eb3fc4875d0de6fd6f54a4e241ba926ab54bb6d15fb76ff591.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e13fc6d4a329774a4f82e3e8bbf57d452f1d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
