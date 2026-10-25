# postprocessCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8323bf748b47ab12a6a06631625e7cecb629a965e14ad9ddd77e2f3485ff885",
  "kind": "def",
  "lexical_name": "postprocessCtx",
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
  "slug": "postprocessctx--a1d22cc67240b15b534836cd",
  "source": {
    "blob": "4cf76646a476458159968607aa90e48ef58ed52b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 603,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1d22cc67240b15b534836cdf5cd8c8a8d8770ea6f6977d3781f65ad07f26d2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8323bf748b47ab12a6a06631625e7cecb629a965e14ad9ddd77e2f3485ff885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postprocessCtx : MetaM Simp.Context := do
  -- collect the available `push_cast` lemmas
  let mut thms : SimpTheorems ← NormCast.pushCastExt.getTheorems
  -- augment this list with the `algebraMapThms` lemmas, which handle `algebraMap` operations
  for thm in algebraMapThms do
    let ⟨levelParams, _, proof⟩ ← abstractMVars (mkConst thm)
    thms ← thms.add (.stx (← mkFreshId) Syntax.missing) levelParams proof
  -- clear the `* 1` tags that the parser marks as atoms
  thms ← [``mul_one, ``one_mul].foldlM (·.addConst ·) thms
  Simp.mkContext { failIfUnchanged := false } (simpTheorems := #[thms])

/-- Postprocessing for the scalar goals constructed in the `match_scalars` and `module` tactics.
These goals feature a proliferation of `algebraMap` operations (because the scalars start in `ℕ` and
get successively bumped up by `algebraMap`s as new semirings are encountered), so we reinterpret the
most commonly occurring `algebraMap`s (those out of `ℕ`, `ℤ` and `ℚ`) into their standard forms
(`ℕ`, `ℤ` and `ℚ` casts) and then try to disperse the casts using the various `push_cast` lemmas.
The `* 1` tags which the parser marks atoms are also cleared. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf76646a476458159968607aa90e48ef58ed52b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
