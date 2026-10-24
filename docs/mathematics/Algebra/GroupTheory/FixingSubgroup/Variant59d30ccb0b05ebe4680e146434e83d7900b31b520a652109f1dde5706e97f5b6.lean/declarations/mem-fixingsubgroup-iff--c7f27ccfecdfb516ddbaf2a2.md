# mem_fixingSubgroup_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c127dd5e-2b49-69e6-1b7f-7bf9a0b084dc",
  "kind": "theorem",
  "lexical_name": "mem_fixingSubgroup_iff",
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
  "slug": "mem-fixingsubgroup-iff--c7f27ccfecdfb516ddbaf2a2",
  "source": {
    "blob": "a85ed97a465a42841af0f404384d936ebe5ac68d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 123,
    "path": "GRWTSK/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f27ccfecdfb516ddbaf2a2ceb1d9b277032ceb90a93dff47c500a24bd4065b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c127dd5e-2b49-69e6-1b7f-7bf9a0b084dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_fixingSubgroup_iff {s : Set α} {m : M} : m ∈ fixingSubgroup M s ↔ ∀ y ∈ s, m • y = y :=
  ⟨fun hg y hy => hg ⟨y, hy⟩, fun h ⟨y, hy⟩ => h y hy⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85ed97a465a42841af0f404384d936ebe5ac68d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
