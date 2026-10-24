# declLocation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d55cc6f8f561b817e38da1d9025820688854f9e74083f2cd8e1f2395c82ee8e6",
  "kind": "def",
  "lexical_name": "declLocation",
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
  "slug": "decllocation--59f64ebc92ed65bd158c5dbc",
  "source": {
    "blob": "7fa2710c3cff8908cb4a56a97acf1c0aafd448ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExportCrossrefs/Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59f64ebc92ed65bd158c5dbcff721ddc3cbe117a588fbaf3ea2e0a1d910f593a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExportCrossrefs/Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d55cc6f8f561b817e38da1d9025820688854f9e74083f2cd8e1f2395c82ee8e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def declLocation (env : Environment) (decl : Name) : Option (String × Nat) := do
  -- Inline `findDeclarationRangesCore?` since it's monadic.
  let ranges ← declRangeExt.find? (level := .exported) env decl <|>
                declRangeExt.find? (level := .server) env decl
  let mod ← env.getModuleFor? decl
  return (mod.toString, ranges.selectionRange.pos.line)

/-- One JSON entry per declaration, sorted by declaration name. A declaration carrying several
cross-references (e.g. both a Stacks and a Wikidata tag) gets a single entry with multiple `refs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExportCrossrefs/Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExportCrossrefs/Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa2710c3cff8908cb4a56a97acf1c0aafd448ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
