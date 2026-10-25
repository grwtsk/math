# unionBody_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fa84e5c-83e3-7250-f44c-92cf753da5db",
  "kind": "theorem",
  "lexical_name": "unionBody_rename",
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
  "slug": "unionbody-rename--063819a324935eb8aa57eab5",
  "source": {
    "blob": "90bd98245c081232dc145a3f5e717c3fc0116812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1022,
    "line": 1016,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant5ddafcc96b411d589313b89e126fa8cdd2a0af6336379d05031b7b6da3b4f217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:063819a324935eb8aa57eab5c3b5c3afbdc334393ea0fca119ef70eb4810f599",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant5ddafcc96b411d589313b89e126fa8cdd2a0af6336379d05031b7b6da3b4f217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fa84e5c-83e3-7250-f44c-92cf753da5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1016–1022.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unionBody_rename (L : LogicCode S) (K : QuantifierCode S) (T G y z : Expr S) (ρ : Nat
  → Nat) :
    (R.unionBody L K T G y z).rename (Expr.liftRen ρ) =
      (R.rename ρ).unionBody (L.rename ρ) (K.rename ρ) (T.rename ρ)
        (G.rename (Expr.liftRen ρ)) (y.rename ρ) (z.rename ρ) := by
  simp only [unionBody,LogicCode.disj_rename,LogicCode.rename_comp,classBody_rename]
  rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant5ddafcc96b411d589313b89e126fa8cdd2a0af6336379d05031b7b6da3b4f217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant5ddafcc96b411d589313b89e126fa8cdd2a0af6336379d05031b7b6da3b4f217.lean#L1016).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90bd98245c081232dc145a3f5e717c3fc0116812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
