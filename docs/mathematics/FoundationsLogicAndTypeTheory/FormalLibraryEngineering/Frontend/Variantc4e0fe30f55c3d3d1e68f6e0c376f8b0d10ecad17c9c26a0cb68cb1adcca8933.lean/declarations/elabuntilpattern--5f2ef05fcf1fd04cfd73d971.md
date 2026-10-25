# elabUntilPattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71669a2aff81c916cdaaf3c84e7a0b0c7926549692ee7b79bd4b0711b0c1b632",
  "kind": "def",
  "lexical_name": "elabUntilPattern",
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
  "slug": "elabuntilpattern--5f2ef05fcf1fd04cfd73d971",
  "source": {
    "blob": "494f36ec6c9300d22a88632a31ac279aa14715a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 337,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f2ef05fcf1fd04cfd73d971be2019c2a10c1fdebfc0e53573c91b4cb0b800b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71669a2aff81c916cdaaf3c84e7a0b0c7926549692ee7b79bd4b0711b0c1b632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabUntilPattern (progTy : Expr) (p : Term) : TermElabM Sym.Pattern :=
  withPatternElab <| withRef p do
    return (← elabProgPattern progTy p).2

/-- Build a `frames` database against the goal program type `progTy` as expected type. Each
alternative's program pattern (a head applied to binder/`_` arguments) is elaborated at `progTy`; a
named binder `x` becomes a synthetic hole `?x` so its name can be recovered and bound to the matched
argument when the frame term is elaborated in `solve`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494f36ec6c9300d22a88632a31ac279aa14715a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
