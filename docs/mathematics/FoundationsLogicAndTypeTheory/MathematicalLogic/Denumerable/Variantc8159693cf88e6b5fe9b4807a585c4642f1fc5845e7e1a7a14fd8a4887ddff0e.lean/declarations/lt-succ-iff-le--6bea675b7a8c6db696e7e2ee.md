# lt_succ_iff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cfb172f-77c0-bb4e-52ee-6bb731767b1d",
  "kind": "theorem",
  "lexical_name": "lt_succ_iff_le",
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
  "slug": "lt-succ-iff-le--6bea675b7a8c6db696e7e2ee",
  "source": {
    "blob": "1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bea675b7a8c6db696e7e2ee7de921e3d00d033301fe9d5dc4eca51679aac74a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cfb172f-77c0-bb4e-52ee-6bb731767b1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_succ_iff_le {x y : s} : x < succ y ↔ x ≤ y :=
  ⟨fun h => le_of_not_gt fun h' => not_le_of_gt h (succ_le_of_lt h'), fun h =>
    lt_of_le_of_lt h (lt_succ_self _)⟩

/-- Returns the `n`-th element of a set, according to the usual ordering of `ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
