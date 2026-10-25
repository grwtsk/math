# simpAttrNameToSimprocAttrName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29aced1d17fc9e3fc18c642232cb6d590a5ae723a253b8fc1182c1d88b53682f",
  "kind": "def",
  "lexical_name": "simpAttrNameToSimprocAttrName",
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
  "slug": "simpattrnametosimprocattrname--85e487961d293e9c0f803d68",
  "source": {
    "blob": "88ca097b6a393a8c73c5d394e02597a7390f354a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 445,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant67742fdfa2334d588ecb9b8252c9ee26d3150f130945a0866420fecfc27e1e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85e487961d293e9c0f803d68605f132da4f6fac255b002acc88cd3a89bb8f5d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant67742fdfa2334d588ecb9b8252c9ee26d3150f130945a0866420fecfc27e1e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29aced1d17fc9e3fc18c642232cb6d590a5ae723a253b8fc1182c1d88b53682f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpAttrNameToSimprocAttrName (attrName : Name) : Name :=
  if attrName == `simp then `simprocAttr
  else if attrName == `seval then `sevalprocAttr
  else attrName.appendAfter "_proc"

/--
Try to retrieve the simproc set using the `simp` or `simproc` attribute names.
Recall that when we declare a `simp` set using `register_simp_attr`, an associated
`simproc` set is automatically created. We use the function `simpAttrNameToSimprocAttrName` to
find the `simproc` associated with the `simp` attribute.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant67742fdfa2334d588ecb9b8252c9ee26d3150f130945a0866420fecfc27e1e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant67742fdfa2334d588ecb9b8252c9ee26d3150f130945a0866420fecfc27e1e02.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ca097b6a393a8c73c5d394e02597a7390f354a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
