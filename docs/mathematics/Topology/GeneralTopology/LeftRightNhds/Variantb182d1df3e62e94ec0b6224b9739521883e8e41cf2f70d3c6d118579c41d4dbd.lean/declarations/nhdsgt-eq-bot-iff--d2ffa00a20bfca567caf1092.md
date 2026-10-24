# nhdsGT_eq_bot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c6c28df-d4f4-001a-6a58-aea580599e8a",
  "kind": "theorem",
  "lexical_name": "nhdsGT_eq_bot_iff",
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
  "slug": "nhdsgt-eq-bot-iff--d2ffa00a20bfca567caf1092",
  "source": {
    "blob": "8093ca23c75f05af56cd50d9d3825ee3e4db6333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2ffa00a20bfca567caf1092f67b201f44bca83ec4b55299604a32339788ee32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c6c28df-d4f4-001a-6a58-aea580599e8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsGT_eq_bot_iff {a : α} : 𝓝[>] a = ⊥ ↔ IsTop a ∨ ∃ b, a ⋖ b := by
  by_cases ha : IsTop a
  · simp [ha, ha.isMax.Ioi_eq]
  · simp only [ha, false_or]
    rw [isTop_iff_isMax, not_isMax_iff] at ha
    simp only [(nhdsGT_basis_of_exists_gt ha).eq_bot_iff, covBy_iff_Ioo_eq]

@[deprecated (since := "2024-12-22")]
alias nhdsWithin_Ioi_eq_bot_iff := nhdsGT_eq_bot_iff

/-- A set is a neighborhood of `a` within `(a, +∞)` if and only if it contains an interval `(a, u)`
with `a < u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8093ca23c75f05af56cd50d9d3825ee3e4db6333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
