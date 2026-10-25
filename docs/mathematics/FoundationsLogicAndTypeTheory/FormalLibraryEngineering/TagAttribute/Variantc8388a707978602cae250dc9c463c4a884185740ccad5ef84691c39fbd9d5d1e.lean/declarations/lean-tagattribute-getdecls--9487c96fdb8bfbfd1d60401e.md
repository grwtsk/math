# Lean.TagAttribute.getDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9b45ce19743fb1e42d011eda9bc0ba7142b3ab29857b2872b569e98f90bf713",
  "kind": "def",
  "lexical_name": "Lean.TagAttribute.getDecls",
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
  "slug": "lean-tagattribute-getdecls--9487c96fdb8bfbfd1d60401e",
  "source": {
    "blob": "1420a742e43caa3b4fca1acaa14f6d332a91b84c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TagAttribute/Variantc8388a707978602cae250dc9c463c4a884185740ccad5ef84691c39fbd9d5d1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9487c96fdb8bfbfd1d60401e159da858be9c75bf4e49859d7b4ef0ac38b8fc40",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TagAttribute/Variantc8388a707978602cae250dc9c463c4a884185740ccad5ef84691c39fbd9d5d1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9b45ce19743fb1e42d011eda9bc0ba7142b3ab29857b2872b569e98f90bf713`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.TagAttribute.getDecls (attr : TagAttribute) (env : Environment) : Array Name :=
  core <| attr.ext.toEnvExtension.getState env
where
  /-- Implementation of `TagAttribute.getDecls`. -/
  core (st : PersistentEnvExtensionState Name NameSet) : Array Name := Id.run do
    let mut decls := st.state.toArray
    for ds in st.importedEntries do
      decls := decls ++ ds
    decls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TagAttribute/Variantc8388a707978602cae250dc9c463c4a884185740ccad5ef84691c39fbd9d5d1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TagAttribute/Variantc8388a707978602cae250dc9c463c4a884185740ccad5ef84691c39fbd9d5d1e.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1420a742e43caa3b4fca1acaa14f6d332a91b84c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
