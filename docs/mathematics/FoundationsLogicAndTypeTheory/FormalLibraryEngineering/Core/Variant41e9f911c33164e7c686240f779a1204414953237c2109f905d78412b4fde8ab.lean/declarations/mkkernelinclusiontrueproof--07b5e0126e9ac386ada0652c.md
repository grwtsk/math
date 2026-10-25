# mkKernelInclusionTrueProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad71458ad17f4cff857cb31f98baac873c5fa0697ce87a6d10fb1faa5be147c9",
  "kind": "def",
  "lexical_name": "mkKernelInclusionTrueProof",
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
  "slug": "mkkernelinclusiontrueproof--07b5e0126e9ac386ada0652c",
  "source": {
    "blob": "2788a5bdab7abb2b7ae5fddb9a3d07e22cbf6eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant41e9f911c33164e7c686240f779a1204414953237c2109f905d78412b4fde8ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07b5e0126e9ac386ada0652c9effe62fd742a1ca98cdc6e58f3019d1694b5ec2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant41e9f911c33164e7c686240f779a1204414953237c2109f905d78412b4fde8ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad71458ad17f4cff857cb31f98baac873c5fa0697ce87a6d10fb1faa5be147c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkKernelInclusionTrueProof (inclusionExpr : Expr) : MetaM Expr := do
  let expectedType ← mkEq inclusionExpr (mkConst ``IntervalBool.true)
  let lemmaLevels := (collectLevelParams {} expectedType).params.toList
  try
    let lemmaName ← withOptions (Elab.async.set · false) do
      mkAuxLemma lemmaLevels expectedType (mkIntervalBoolRefl inclusionExpr)
    return mkConst lemmaName (lemmaLevels.map .param)
  catch _ =>
    throwError "The kernel failed to verify the proposition."

/-- Use native evaluation to prove that `inclusionExpr` equals `IntervalBool.true`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant41e9f911c33164e7c686240f779a1204414953237c2109f905d78412b4fde8ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant41e9f911c33164e7c686240f779a1204414953237c2109f905d78412b4fde8ab.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2788a5bdab7abb2b7ae5fddb9a3d07e22cbf6eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
