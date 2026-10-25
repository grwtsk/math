# insertInRefinedDiscrTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:698b478ac361793beaf3a17285a0fc84de063a2f88557fa06cecde1c17b70ffe",
  "kind": "def",
  "lexical_name": "insertInRefinedDiscrTree",
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
  "slug": "insertinrefineddiscrtree--e2a78d955f4e08099597d928",
  "source": {
    "blob": "42a6a521e25ea6464c244f0e208886cec93b0e85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant4032cdaf5860368980f8b7d9c3c7f375b4d0c0aba975449f1744f41925755481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2a78d955f4e08099597d92819e1cb4dc3f95859282c37e8750f9f4218f058e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant4032cdaf5860368980f8b7d9c3c7f375b4d0c0aba975449f1744f41925755481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:698b478ac361793beaf3a17285a0fc84de063a2f88557fa06cecde1c17b70ffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def insertInRefinedDiscrTree [BEq α] (d : RefinedDiscrTree α) (keys : Array Key) (v : α) :
    RefinedDiscrTree α :=
  let k := keys[0]!
  match d.root.find? k with
  | none =>
    let c := .singleton keys v 1
    { root := d.root.insert k c }
  | some c =>
    let c := insertInTrie keys v 1 c
    { root := d.root.insert k c }

/-- Insert the value `v` at index `e : DTExpr` in a `RefinedDiscrTree`.

Warning: to account for η-reduction, an entry may need to be added at multiple indexes,
so it is recommended to use `RefinedDiscrTree.insert` for insertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant4032cdaf5860368980f8b7d9c3c7f375b4d0c0aba975449f1744f41925755481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant4032cdaf5860368980f8b7d9c3c7f375b4d0c0aba975449f1744f41925755481.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a6a521e25ea6464c244f0e208886cec93b0e85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
