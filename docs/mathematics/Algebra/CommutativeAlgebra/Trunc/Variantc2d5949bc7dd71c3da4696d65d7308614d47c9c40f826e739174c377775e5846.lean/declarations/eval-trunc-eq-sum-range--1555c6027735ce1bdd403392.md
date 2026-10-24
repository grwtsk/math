# eval₂_trunc_eq_sum_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2deacce3-1a83-3493-8dff-97ff7cb52232",
  "kind": "theorem",
  "lexical_name": "eval₂_trunc_eq_sum_range",
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
  "slug": "eval-trunc-eq-sum-range--1555c6027735ce1bdd403392",
  "source": {
    "blob": "3530eaf1ad79b49ef54e0df6ab41a9800ba41a38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 106,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1555c6027735ce1bdd40339251bb5c5b485cbb2c0be7f2918c365175f9b598c0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2deacce3-1a83-3493-8dff-97ff7cb52232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂_trunc_eq_sum_range {S : Type*} [Semiring S] (s : S) (G : R →+* S) (n) (f : R⟦X⟧) :
    (trunc n f).eval₂ G s = ∑ i ∈ range n, G (coeff R i f) * s ^ i := by
  cases n with
  | zero =>
    rw [trunc_zero', range_zero, sum_empty, eval₂_zero]
  | succ n =>
    have := natDegree_trunc_lt f n
    rw [eval₂_eq_sum_range' (hn := this)]
    apply sum_congr rfl
    intro _ h
    rw [mem_range] at h
    congr
    rw [coeff_trunc, if_pos h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3530eaf1ad79b49ef54e0df6ab41a9800ba41a38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
