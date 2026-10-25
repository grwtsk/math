# registerInclusionFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5f934ca34418725802f7cd3283920d3211f4289814be6f77df3a6f46cc40211",
  "kind": "def",
  "lexical_name": "registerInclusionFamily",
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
  "slug": "registerinclusionfamily--31d1870e1e140fd29a01361a",
  "source": {
    "blob": "c623cb15ab9044a7e70f12fd70781939d1908887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31d1870e1e140fd29a01361a7c84c4f05e2ad534bb3e158497a1418706c5d81f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5f934ca34418725802f7cd3283920d3211f4289814be6f77df3a6f46cc40211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerInclusionFamily (name : Name) (ref : Name := by exact decl_name%) :
    IO InclusionFamily := do
  if (← inclusionFamiliesRef.get).contains name then
    throw <| IO.userError s!"Inclusion family `{name}` is already registered"
  let inclusionExt ← initializeEnvExt ``InclusionExt (ref.str "inclusionExt")
  let hypothesisExt ← initializeEnvExt ``HypothesisExt (ref.str "hypothesisExt")
  let family := { inclusionExt, hypothesisExt }
  inclusionFamiliesRef.modify (·.insert name family)
  return family

/-- If `name` is the name of an `InclusionFamily` `family` then return `some family`,
otherwise return `none`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c623cb15ab9044a7e70f12fd70781939d1908887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
