# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCertExt.Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.Lean.Name.toSyntaxCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2700248304a1c4d5a12a9557c4d831b2d9f613790a2a30580221438466be598",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCertExt.Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.Lean.Name.toSyntaxCat",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-prime--7048f69e6377408538f6b583",
  "source": {
    "blob": "ec32ec4f22dacca80979a462c9c23f83f5cc6cad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7048f69e6377408538f6b583381a09c82e65c4335dfeaa5011f1bd3ed289af74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2700248304a1c4d5a12a9557c4d831b2d9f613790a2a30580221438466be598`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCertExt.Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.Lean.Name.toSyntaxCat (cat : Name) : TSyntax `stx :=
  .mk <| mkNode `Lean.Parser.Syntax.cat #[mkIdent cat, mkNullNode]

/-- If we're given a syntax `pock_spec` for a step in `pock`, we do the following:
```lean
syntax "pock" pock_spec : step_spec
syntax "pock" "{" pock_spec;+ "}" : step_spec
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec32ec4f22dacca80979a462c9c23f83f5cc6cad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
