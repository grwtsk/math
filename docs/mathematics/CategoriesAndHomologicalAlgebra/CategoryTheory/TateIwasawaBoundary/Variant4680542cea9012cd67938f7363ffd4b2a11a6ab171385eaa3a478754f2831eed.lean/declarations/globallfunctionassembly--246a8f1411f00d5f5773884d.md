# GlobalLFunctionAssembly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41f7e530d4ad6a85355388bd4de1f7795f16fabf25665ea26dce1e87af66531f",
  "kind": "structure",
  "lexical_name": "GlobalLFunctionAssembly",
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
  "slug": "globallfunctionassembly--246a8f1411f00d5f5773884d",
  "source": {
    "blob": "522485b803dbfcb35a5ee8ff2fa1c2e88d9a2005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 25,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TateIwasawaBoundary/Variant4680542cea9012cd67938f7363ffd4b2a11a6ab171385eaa3a478754f2831eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:246a8f1411f00d5f5773884d8f91c8f51c1ed612791065ccd2b1ef9de985a31c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TateIwasawaBoundary/Variant4680542cea9012cd67938f7363ffd4b2a11a6ab171385eaa3a478754f2831eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41f7e530d4ad6a85355388bd4de1f7795f16fabf25665ea26dce1e87af66531f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlobalLFunctionAssembly where
  localFactor : Place → Option LocalLFactor
  globalLFunction : Type _
  productFormula : Prop
  productFormula_certified : productFormula
  functionalEquation : Prop
  functionalEquation_certified : functionalEquation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TateIwasawaBoundary/Variant4680542cea9012cd67938f7363ffd4b2a11a6ab171385eaa3a478754f2831eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TateIwasawaBoundary/Variant4680542cea9012cd67938f7363ffd4b2a11a6ab171385eaa3a478754f2831eed.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522485b803dbfcb35a5ee8ff2fa1c2e88d9a2005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
