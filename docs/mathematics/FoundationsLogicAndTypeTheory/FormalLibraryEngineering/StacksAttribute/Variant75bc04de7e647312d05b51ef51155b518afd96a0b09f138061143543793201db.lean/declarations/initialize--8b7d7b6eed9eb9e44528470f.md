# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21e54006ebe3b1bb7fa437746b9b9957db269bab7740e6372fa31bd4cc4df7b0",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--8b7d7b6eed9eb9e44528470f",
  "source": {
    "blob": "6afbcff4dd01e42b91a656be799b5de10b7c1103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b7d7b6eed9eb9e44528470fe97c76f085a33d0dbd7012f00f643786497d5849",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21e54006ebe3b1bb7fa437746b9b9957db269bab7740e6372fa31bd4cc4df7b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize Lean.registerBuiltinAttribute {
  name := `stacksTag
  descr := "Apply a Stacks or Kerodon project tag to a theorem."
  add := fun decl stx _attrKind => do
    let oldDoc := (← findDocString? (← getEnv) decl).getD ""
    let (SorK, database, url, tag, comment) := ← match stx with
      | `(attr| stacks $tag $[$comment]?) =>
        return ("Stacks", Database.stacks, "https://stacks.math.columbia.edu/tag", tag, comment)
      | `(attr| kerodon $tag $[$comment]?) =>
        return ("Kerodon", Database.kerodon, "https://kerodon.net/tag", tag, comment)
      | _ => throwUnsupportedSyntax
    let tagStr ← tag.getStacksTag
    let comment := (comment.map (·.getString)).getD ""
    let commentInDoc := if comment = "" then "" else s!" ({comment})"
    let newDoc := [oldDoc, s!"[{SorK} Tag {tagStr}]({url}/{tagStr}){commentInDoc}"]
    addDocStringCore decl <| "\n\n".intercalate (newDoc.filter (· != ""))
    addTagEntry decl database tagStr <| comment
  -- docstrings are immutable once an asynchronous elaboration task has been started
  applicationTime := .beforeElaboration
}

end Mathlib.StacksTag

/--
`getSortedStackProjectTags env` returns the array of `Tags`, sorted by alphabetical order of tag.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afbcff4dd01e42b91a656be799b5de10b7c1103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
