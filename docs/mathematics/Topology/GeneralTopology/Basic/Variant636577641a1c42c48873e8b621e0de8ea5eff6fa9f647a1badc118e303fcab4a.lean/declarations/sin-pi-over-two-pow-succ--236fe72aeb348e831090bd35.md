# sin_pi_over_two_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1baf88b7-ed4d-c7db-6bb5-62ecace6b46c",
  "kind": "theorem",
  "lexical_name": "sin_pi_over_two_pow_succ",
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
  "slug": "sin-pi-over-two-pow-succ--236fe72aeb348e831090bd35",
  "source": {
    "blob": "3a3c9c43836c739ad6841734e251a77902bbd88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 688,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:236fe72aeb348e831090bd35a0674b38d2e57db8317b775578223e38647908e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1baf88b7-ed4d-c7db-6bb5-62ecace6b46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_pi_over_two_pow_succ (n : ℕ) :
    sin (π / 2 ^ (n + 2)) = √(2 - sqrtTwoAddSeries 0 n) / 2 := by
  rw [eq_div_iff_mul_eq two_ne_zero, eq_comm, sqrt_eq_iff_eq_sq, mul_pow,
    sin_sq_pi_over_two_pow_succ, sub_mul]
  · congr <;> norm_num
  · rw [sub_nonneg]
    exact (sqrtTwoAddSeries_lt_two _).le
  refine mul_nonneg (sin_nonneg_of_nonneg_of_le_pi ?_ ?_) zero_le_two
  · positivity
  · exact div_le_self pi_pos.le <| one_le_pow₀ one_le_two

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a3c9c43836c739ad6841734e251a77902bbd88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
