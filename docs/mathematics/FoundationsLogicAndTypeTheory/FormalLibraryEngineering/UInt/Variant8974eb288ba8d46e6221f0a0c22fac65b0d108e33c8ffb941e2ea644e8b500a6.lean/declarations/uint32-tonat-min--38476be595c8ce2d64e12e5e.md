# UInt32.toNat_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b593571d-1e74-5c73-b9ea-9c204f406a38",
  "kind": "theorem",
  "lexical_name": "UInt32.toNat_min",
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
  "slug": "uint32-tonat-min--38476be595c8ce2d64e12e5e",
  "source": {
    "blob": "aa73d70f0d58db75122ebb296c4aa13f48f182a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant8974eb288ba8d46e6221f0a0c22fac65b0d108e33c8ffb941e2ea644e8b500a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38476be595c8ce2d64e12e5e4f5e1d8b9a00696e341ee58aef1c803fef485f3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant8974eb288ba8d46e6221f0a0c22fac65b0d108e33c8ffb941e2ea644e8b500a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b593571d-1e74-5c73-b9ea-9c204f406a38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UInt32.toNat_min (x y : UInt32) : (min x y).toNat = min x.toNat y.toNat := by
  rw [min_def]
  split
  · next h =>
      rw [le_iff_toNat_le_toNat] at h
      rw [Nat.min_eq_left h]
  · next h =>
      rw [le_iff_toNat_le_toNat] at h
      rw [Nat.min_eq_right (Nat.le_of_not_ge h)]

/-! ### UInt64 -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant8974eb288ba8d46e6221f0a0c22fac65b0d108e33c8ffb941e2ea644e8b500a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant8974eb288ba8d46e6221f0a0c22fac65b0d108e33c8ffb941e2ea644e8b500a6.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa73d70f0d58db75122ebb296c4aa13f48f182a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
