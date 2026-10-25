# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:734aa3a0b6cf6f79b2534a758ba35d4bb6e60201956562717c584b6efcb30d5f",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--1e182251975d98fedde9db64",
  "source": {
    "blob": "c95aea0f910de01de321b9da766c07b7106cb617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e182251975d98fedde9db64df23f90b7169083c7dec76a2bd7de86777c1840b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:734aa3a0b6cf6f79b2534a758ba35d4bb6e60201956562717c584b6efcb30d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  registerBuiltinAttribute {
    ref   := `cbvEvalAttr
    name  := `cbv_eval
    descr := "Register a theorem as a rewrite rule for `cbv` evaluation of a given definition."
    applicationTime := AttributeApplicationTime.afterCompilation
    add := fun lemmaName stx kind => do
      let inv := !stx[1].isNone
      let (entry, _) ← MetaM.run (mkCbvTheoremFromConst lemmaName (inv := inv)) {}
      cbvEvalExt.add entry kind
    erase := fun declName => do
      let s := cbvEvalExt.getState (← getEnv)
      match s.erase declName with
      | some s' => modifyEnv fun env => cbvEvalExt.modifyState env fun _ => s'
      | none => logWarning m!"`{.ofConstName declName}` does not have the `[cbv_eval]` attribute"
  }

end Lean.Meta.Tactic.Cbv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95aea0f910de01de321b9da766c07b7106cb617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
