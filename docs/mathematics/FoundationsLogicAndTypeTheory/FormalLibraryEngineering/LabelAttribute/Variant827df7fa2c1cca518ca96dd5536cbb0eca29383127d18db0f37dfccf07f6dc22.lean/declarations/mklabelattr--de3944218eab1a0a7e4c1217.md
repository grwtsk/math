# mkLabelAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a50a8d93b088470dc88db098264249bf79360157560471eccc8694daab7279a7",
  "kind": "def",
  "lexical_name": "mkLabelAttr",
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
  "slug": "mklabelattr--de3944218eab1a0a7e4c1217",
  "source": {
    "blob": "ea0dfcb056a12b8d921461d7d5d298a8a96f45eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de3944218eab1a0a7e4c1217d10831230a944b944ed5684c7eaf74ced7503e60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a50a8d93b088470dc88db098264249bf79360157560471eccc8694daab7279a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLabelAttr (attrName : Name) (attrDescr : String) (ext : LabelExtension)
  (ref : Name := by exact decl_name%) : IO Unit :=
registerBuiltinAttribute {
  ref   := ref
  name  := attrName
  descr := attrDescr
  applicationTime := AttributeApplicationTime.afterCompilation
  add   := fun declName _ kind =>
    ext.add declName kind
  erase := fun declName => do
    let s := ext.getState (← getEnv)
    modifyEnv fun env => ext.modifyState env fun _ => s.erase declName
}

/--
Construct a new "label attribute",
which does nothing except keep track of the names of the declarations with that attribute.

Users will generally use the `register_label_attr` macro defined below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea0dfcb056a12b8d921461d7d5d298a8a96f45eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
