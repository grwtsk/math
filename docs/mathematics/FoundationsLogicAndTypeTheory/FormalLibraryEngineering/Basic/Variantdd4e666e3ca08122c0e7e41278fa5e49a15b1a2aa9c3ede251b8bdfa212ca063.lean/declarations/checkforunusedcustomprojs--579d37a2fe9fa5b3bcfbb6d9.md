# checkForUnusedCustomProjs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15ecaaa5b8061256a97107ac3ecb111d40d252932aac9d2a1d3166ec4f4cd334",
  "kind": "def",
  "lexical_name": "checkForUnusedCustomProjs",
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
  "slug": "checkforunusedcustomprojs--579d37a2fe9fa5b3bcfbb6d9",
  "source": {
    "blob": "0479e1e84fa7c9d53b5dcb94336ad6f7962f01fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 681,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:579d37a2fe9fa5b3bcfbb6d9f711a9d6d1f4409ccfef90a292d89ecce6e4a180",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15ecaaa5b8061256a97107ac3ecb111d40d252932aac9d2a1d3166ec4f4cd334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkForUnusedCustomProjs (stx : Syntax) (str : Name) (projs : Array ParsedProjectionData) :
    CoreM Unit := do
  let nrCustomProjections := projs.toList.countP (·.isCustom)
  let env ← getEnv
  let customDeclarations := env.constants.map₂.foldl (init := #[]) fun xs nm _ =>
    if (str ++ `Simps).isPrefixOf nm && !nm.isInternalDetail && !isReservedName env nm then
      xs.push nm
    else
      xs
  if nrCustomProjections < customDeclarations.size then
    Linter.logLintIf linter.simpsUnusedCustomDeclarations stx m!"\
      Not all of the custom declarations {customDeclarations} are used. Double check the \
      spelling, and use `?` to get more information."

/-- If a structure has a field that corresponds to a coercion to functions or sets, or corresponds
  to notation, find the custom projection that uses this coercion or notation.
  Returns the custom projection and the name of the projection used.

We catch most errors this function causes, so that we don't fail if an unrelated projection has
an applicable name. (e.g. `Iso.inv`)

Implementation note: getting rid of TermElabM is tricky, since `Expr.mkAppOptM` doesn't allow to
keep metavariables around, which are necessary for `OutParam`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0479e1e84fa7c9d53b5dcb94336ad6f7962f01fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
