# nextPowerOfTwo_dec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:337d713c-29e3-b68a-b24f-5cd233721037",
  "kind": "theorem",
  "lexical_name": "nextPowerOfTwo_dec",
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
  "slug": "nextpoweroftwo-dec--008bf43759d8689ebfbe25e9",
  "source": {
    "blob": "35e853d8d763cb6a5c9f5cff5ecb09a02238b5fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:008bf43759d8689ebfbe25e9e3f0f8d054143caf04c40ebeab4e738b44f8c6bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:337d713c-29e3-b68a-b24f-5cd233721037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nextPowerOfTwo_dec {n power : Nat} (h₁ : power > 0) (h₂ : power < n) : n - power * 2 < n - power := by
  have : power * 2 = power + power := by simp +arith
  rw [this, Nat.sub_add_eq]
  exact Nat.sub_lt (Nat.zero_lt_sub_of_lt h₂) h₁

/--
Returns the least power of two that's greater than or equal to `n`.

Examples:
 * `Nat.nextPowerOfTwo 0 = 1`
 * `Nat.nextPowerOfTwo 1 = 1`
 * `Nat.nextPowerOfTwo 2 = 2`
 * `Nat.nextPowerOfTwo 3 = 4`
 * `Nat.nextPowerOfTwo 5 = 8`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e853d8d763cb6a5c9f5cff5ecb09a02238b5fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
