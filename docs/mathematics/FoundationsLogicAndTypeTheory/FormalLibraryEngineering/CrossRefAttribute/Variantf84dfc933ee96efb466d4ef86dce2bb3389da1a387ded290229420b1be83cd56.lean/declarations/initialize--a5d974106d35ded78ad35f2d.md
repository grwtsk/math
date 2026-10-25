# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59ff8eca932b276b768a4eeb6fe9db251430bfd7f52fd97ace73e32371ed8978",
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
  "slug": "initialize--a5d974106d35ded78ad35f2d",
  "source": {
    "blob": "836bc24d67f0df6324347a8596ddd5209b531de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 435,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variantf84dfc933ee96efb466d4ef86dce2bb3389da1a387ded290229420b1be83cd56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5d974106d35ded78ad35f2db42cf777c1d226c086498d7595115e726394f383",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variantf84dfc933ee96efb466d4ef86dce2bb3389da1a387ded290229420b1be83cd56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59ff8eca932b276b768a4eeb6fe9db251430bfd7f52fd97ace73e32371ed8978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize Lean.registerBuiltinAttribute {
  name := `stacksTag
  descr := "Apply a Stacks or Kerodon project tag to a theorem."
  add := fun decl stx _attrKind => do
    let (db, tag, comment) ← match stx with
      | `(attr| stacks $tag $[$comment]?) => pure (Database.stacks, tag, comment)
      | `(attr| kerodon $tag $[$comment]?) => pure (Database.kerodon, tag, comment)
      | _ => throwUnsupportedSyntax
    addCrossRefDoc db decl (← tag.getStacksTag) ((comment.map (·.getString)).getD "")
  -- docstrings are immutable once an asynchronous elaboration task has been started
  applicationTime := .beforeElaboration
}

/-! ### Wikidata attribute -/

/-- The `wikidata` attribute.
Use it as `@[wikidata Q12345 "Optional comment"]` to associate a Mathlib declaration with
the corresponding [Wikidata](https://www.wikidata.org) item.

The identifier must be the letter `Q` followed by one or more digits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variantf84dfc933ee96efb466d4ef86dce2bb3389da1a387ded290229420b1be83cd56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variantf84dfc933ee96efb466d4ef86dce2bb3389da1a387ded290229420b1be83cd56.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836bc24d67f0df6324347a8596ddd5209b531de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
