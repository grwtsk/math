# sectorMM_after_PM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69342127-99b3-e754-55b7-8252ef50837a",
  "kind": "theorem",
  "lexical_name": "sectorMM_after_PM",
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
  "slug": "sectormm-after-pm--e274ac73a0633067f457d2cf",
  "source": {
    "blob": "fe805f9cd5ec5c6397f26c1262bf4818580f9d32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 342,
    "path": "GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e274ac73a0633067f457d2cfb5ecb5aa1e5998b0ee3c5ede661e4e67a68bc059",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69342127-99b3-e754-55b7-8252ef50837a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sectorMM_after_PM (x : V) :
    C.sectorMM (C.sectorPM x) = 0 := by
  change involutionMinus C.first
      (involutionMinus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusMinus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.second C.second_sq]
  rw [involutionMinus_after_plus C.first C.first_sq]

/-- -+ annihilates --. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe805f9cd5ec5c6397f26c1262bf4818580f9d32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
