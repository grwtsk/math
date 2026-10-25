# TagAttributeExtra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36fdfcf7bf68d0d57daca83e7a6f47f3f71ca56bcd10937da936dfe6f3833ae8",
  "kind": "structure",
  "lexical_name": "TagAttributeExtra",
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
  "slug": "tagattributeextra--744ac91570b1ce0e5163ae39",
  "source": {
    "blob": "82ccf07197a24292a0e79532b935834afef38b7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AttributeExtra/Variant2609adf8d6fbce65686c01e8b8930381af1c6cc3233972a282cfca99bc3810ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:744ac91570b1ce0e5163ae396923d5d453f5bed7da5adac19548f1f97a337d80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AttributeExtra/Variant2609adf8d6fbce65686c01e8b8930381af1c6cc3233972a282cfca99bc3810ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36fdfcf7bf68d0d57daca83e7a6f47f3f71ca56bcd10937da936dfe6f3833ae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TagAttributeExtra where
  /-- The environment extension for the attribute. -/
  ext : PersistentEnvExtension Name Name NameSet
  /-- A list of "base" declarations which have been pre-tagged. -/
  base : NameHashSet
  deriving Inhabited

/--
Registers a new tag attribute. The `extra` field is a list of definitions from other modules
which will be "pre-tagged" and are not subject to the usual restriction on tagging in the same
file as the declaration.

Note: The `extra` fields bypass the `validate` function -
we assume the builtins are also pre-validated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AttributeExtra/Variant2609adf8d6fbce65686c01e8b8930381af1c6cc3233972a282cfca99bc3810ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AttributeExtra/Variant2609adf8d6fbce65686c01e8b8930381af1c6cc3233972a282cfca99bc3810ea.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ccf07197a24292a0e79532b935834afef38b7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
