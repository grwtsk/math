# dfs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f306a59d1e1868254a787c9b983901ff0bf6e4b6963027c15122e38ebe78a919",
  "kind": "def",
  "lexical_name": "dfs",
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
  "slug": "dfs--a2cbe8dba69fe6cf149d78ec",
  "source": {
    "blob": "9af60ef447325987c48e54a415d187f5ba1a661d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2cbe8dba69fe6cf149d78ecbcd09a01676de048de97f0aa941e42e8d94714ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f306a59d1e1868254a787c9b983901ff0bf6e4b6963027c15122e38ebe78a919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def dfs (i j : ℕ) (P P' : Q(Prop)) (hP : Q($P)) : StateT (Std.HashSet ℕ) MetaM Q($P') := do
  if i == j then
    return hP
  modify (·.insert i)
  for (a, b, h) in hyps do
    if i == a then
      if !(← get).contains b then
        have Q := atoms[b]!
        have h : Q($P → $Q) := h
        try return ← dfs b j Q P' q($h $hP) catch _ => pure ()
  failure

/-- Prove an implication via depth-first traversal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9af60ef447325987c48e54a415d187f5ba1a661d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
