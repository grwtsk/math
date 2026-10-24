# Algebra.rank_adjoin_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f6b8c03-b099-4d03-d40e-406a2c4a0343",
  "kind": "theorem",
  "lexical_name": "Algebra.rank_adjoin_le",
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
  "slug": "algebra-rank-adjoin-le--0b967a22fe80691674f6a75d",
  "source": {
    "blob": "fa173666cd2439d7cfd6816c4995606818da2015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b967a22fe80691674f6a75d8be546358a040e2043b8da324818891edd28f316",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f6b8c03-b099-4d03-d40e-406a2c4a0343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.rank_adjoin_le {R : Type u} {S : Type v} [CommRing R] [Ring S] [Algebra R S]
    (s : Set S) : Module.rank R (adjoin R s) ≤ max #s ℵ₀ := by
  rw [adjoin_eq_range_freeAlgebra_lift]
  cases subsingleton_or_nontrivial R
  · rw [rank_subsingleton]; exact one_le_aleph0.trans (le_max_right _ _)
  rw [← lift_le.{max u v}]
  refine (lift_rank_range_le (FreeAlgebra.lift R ((↑) : s → S)).toLinearMap).trans ?_
  rw [FreeAlgebra.rank_eq, lift_id'.{v,u}, lift_umax.{v,u}, lift_le, max_comm]
  exact mk_list_le_max _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa173666cd2439d7cfd6816c4995606818da2015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
