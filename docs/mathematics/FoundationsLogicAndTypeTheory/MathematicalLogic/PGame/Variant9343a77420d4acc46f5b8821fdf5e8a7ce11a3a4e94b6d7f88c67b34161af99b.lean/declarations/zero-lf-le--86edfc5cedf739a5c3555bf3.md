# zero_lf_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b782acc9-7afb-3c25-2651-357c51d10392",
  "kind": "theorem",
  "lexical_name": "zero_lf_le",
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
  "slug": "zero-lf-le--86edfc5cedf739a5c3555bf3",
  "source": {
    "blob": "cd209ea69ea62689862c280bb5efbd52e7469f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 669,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant9343a77420d4acc46f5b8821fdf5e8a7ce11a3a4e94b6d7f88c67b34161af99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86edfc5cedf739a5c3555bf349503572f475e8a6554bd26cfb5ad22ed0e443aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant9343a77420d4acc46f5b8821fdf5e8a7ce11a3a4e94b6d7f88c67b34161af99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b782acc9-7afb-3c25-2651-357c51d10392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_lf_le {x : PGame} : 0 ⧏ x ↔ ∃ i, 0 ≤ x.moveLeft i := by
  rw [lf_iff_exists_le]
  simp
#align pgame.zero_lf_le SetTheory.PGame.zero_lf_le

/-- The definition of `x ⧏ 0` on pre-games, in terms of `≤ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant9343a77420d4acc46f5b8821fdf5e8a7ce11a3a4e94b6d7f88c67b34161af99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant9343a77420d4acc46f5b8821fdf5e8a7ce11a3a4e94b6d7f88c67b34161af99b.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd209ea69ea62689862c280bb5efbd52e7469f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
