# getDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27e93b39eb36ac9ca39ad98d036b5a7862da8e06fc4e33dd614ad57e8eae0a23",
  "kind": "def",
  "lexical_name": "getDecls",
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
  "slug": "getdecls--1df0e40badcfb04822fea1e7",
  "source": {
    "blob": "2cfcf8007d59e4c32596b24a779000b65e3aab28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AttributeExtra/Variantda0ac01dfa36850afdb20eb42ee53b655f2253f5eb7c60be3eb55ffdd5992f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1df0e40badcfb04822fea1e7caebbcb1cc353554b12692403f07278476405d16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AttributeExtra/Variantda0ac01dfa36850afdb20eb42ee53b655f2253f5eb7c60be3eb55ffdd5992f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27e93b39eb36ac9ca39ad98d036b5a7862da8e06fc4e33dd614ad57e8eae0a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getDecls (attr : TagAttributeExtra) (env : Environment) : Array Name := Id.run do
  let decls := TagAttribute.getDecls.core <| attr.ext.toEnvExtension.getState env
  attr.base.fold (·.push ·) decls

end TagAttributeExtra

/--
`ParametricAttributeExtra` works around a limitation of `ParametricAttribute`, which is that
definitions must be tagged in the same file that declares the definition.
This works well for definitions in lean core, but for attributes declared outside the core
this is problematic because we may want to tag declarations created before the attribute
was defined.

To resolve this, we allow a one-time exception to the rule that attributes must be applied
in the same file as the declaration: During the declaration of the attribute itself,
we can tag arbitrary other definitions, but once the attribute is declared we must tag things
in the same file as normal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AttributeExtra/Variantda0ac01dfa36850afdb20eb42ee53b655f2253f5eb7c60be3eb55ffdd5992f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AttributeExtra/Variantda0ac01dfa36850afdb20eb42ee53b655f2253f5eb7c60be3eb55ffdd5992f65.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfcf8007d59e4c32596b24a779000b65e3aab28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
