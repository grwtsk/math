# Nat.lo_eq_false_of_lo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1dba11b-0488-0eb9-cadb-877fa4139ebd",
  "kind": "theorem",
  "lexical_name": "Nat.lo_eq_false_of_lo",
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
  "slug": "nat-lo-eq-false-of-lo--a66a046b8744dd082293a41e",
  "source": {
    "blob": "9186241e7d67fe494e0fc7662ec343e9bfdca67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant3e23f87e8e50451c9acf372f00c2afc3d301cdb00d1a3c3af041e4c8afd4469c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a66a046b8744dd082293a41ea8700db9d1dbeed6498937242085a16f65297362",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant3e23f87e8e50451c9acf372f00c2afc3d301cdb00d1a3c3af041e4c8afd4469c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1dba11b-0488-0eb9-cadb-877fa4139ebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.lo_eq_false_of_lo (u v k₁ k₂ : Nat) : isLt 0 (k₁+k₂) = true → u + k₁ ≤ v → (v + k₂ ≤ u) = False := by
  simp [isLt]; omega
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant3e23f87e8e50451c9acf372f00c2afc3d301cdb00d1a3c3af041e4c8afd4469c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant3e23f87e8e50451c9acf372f00c2afc3d301cdb00d1a3c3af041e4c8afd4469c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9186241e7d67fe494e0fc7662ec343e9bfdca67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
