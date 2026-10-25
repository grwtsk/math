# Nat.ro_eq_false_of_lo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eaba116-08c3-28bc-2d07-c6b53245f1a3",
  "kind": "theorem",
  "lexical_name": "Nat.ro_eq_false_of_lo",
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
  "slug": "nat-ro-eq-false-of-lo--2a6463b5e020a664ba312dab",
  "source": {
    "blob": "9186241e7d67fe494e0fc7662ec343e9bfdca67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant3e23f87e8e50451c9acf372f00c2afc3d301cdb00d1a3c3af041e4c8afd4469c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a6463b5e020a664ba312dab951999e7a781e56b44ff780872cb5ee38994860f",
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

Occurrence: `result:1eaba116-08c3-28bc-2d07-c6b53245f1a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.ro_eq_false_of_lo (u v k₁ k₂ : Nat) : isLt k₂ k₁ = true → u + k₁ ≤ v → (v ≤ u + k₂) = False := by
  simp [isLt]; omega
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant3e23f87e8e50451c9acf372f00c2afc3d301cdb00d1a3c3af041e4c8afd4469c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant3e23f87e8e50451c9acf372f00c2afc3d301cdb00d1a3c3af041e4c8afd4469c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9186241e7d67fe494e0fc7662ec343e9bfdca67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
