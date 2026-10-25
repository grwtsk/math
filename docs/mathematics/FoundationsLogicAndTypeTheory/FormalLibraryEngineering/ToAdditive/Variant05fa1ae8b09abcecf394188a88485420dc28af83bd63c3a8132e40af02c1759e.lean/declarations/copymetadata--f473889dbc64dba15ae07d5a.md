# copyMetaData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbf66a967235a2d6f7987cbf31a72c69b634079cc1853b151951ed7779e8ef33",
  "kind": "def",
  "lexical_name": "copyMetaData",
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
  "slug": "copymetadata--f473889dbc64dba15ae07d5a",
  "source": {
    "blob": "8d2dbfc21ec31d53c72b1ae3cdcea7b450370dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 999,
    "line": 981,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f473889dbc64dba15ae07d5a1de67f50d502af0487a2901c7a12cced28dc5c32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbf66a967235a2d6f7987cbf31a72c69b634079cc1853b151951ed7779e8ef33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 981–999.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def copyMetaData (cfg : Config) (src tgt : Name) : CoreM (Array Name) := do
  if let some eqns := eqnsAttribute.find? (← getEnv) src then
    unless (eqnsAttribute.find? (← getEnv) tgt).isSome do
      for eqn in eqns do _ ← addToAdditiveAttr eqn cfg
      eqnsAttribute.add tgt (eqns.map (findTranslation? (← getEnv) · |>.get!))
  else
    /- We need to generate all equation lemmas for `src` and `tgt`, even for non-recursive
    definitions. If we don't do that, the equation lemma for `src` might be generated later
    when doing a `rw`, but it won't be generated for `tgt`. -/
    additivizeLemmas #[src, tgt] "equation lemmas" fun nm ↦
      (·.getD #[]) <$> MetaM.run' (getEqnsFor? nm true)
  MetaM.run' <| Elab.Term.TermElabM.run' <|
    applyAttributes cfg.ref cfg.attrs `to_additive src tgt

/--
Make a new copy of a declaration, replacing fragments of the names of identifiers in the type and
the body using the `translations` dictionary.
This is used to implement `@[to_additive]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean#L981).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2dbfc21ec31d53c72b1ae3cdcea7b450370dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
