# transitiveReduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:465704e3465b908646cd09b07fde84e8bea99acc78ca1d5b245ce280a7f45a25",
  "kind": "def",
  "lexical_name": "transitiveReduction",
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
  "slug": "transitivereduction--dc2ec04de3337546662cb66a",
  "source": {
    "blob": "0db5a2514f56ce2d4290c2ec7739ac6cd42c812e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc2ec04de3337546662cb66a32781dd704e8afb7bb80a2c415c7162122e85387",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:465704e3465b908646cd09b07fde84e8bea99acc78ca1d5b245ce280a7f45a25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def transitiveReduction (m : NameMap (Array Name)) : NameMap (Array Name) :=
  let c := transitiveClosure m
  m.foldl (fun r n a =>
    r.insert n (a.foldr (fun i b => b.filter (fun j => ! ((c.find? i).getD {}).contains j)) a)) {}

/-- Restrict an import graph to only the downstream dependencies of some set of modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0db5a2514f56ce2d4290c2ec7739ac6cd42c812e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
