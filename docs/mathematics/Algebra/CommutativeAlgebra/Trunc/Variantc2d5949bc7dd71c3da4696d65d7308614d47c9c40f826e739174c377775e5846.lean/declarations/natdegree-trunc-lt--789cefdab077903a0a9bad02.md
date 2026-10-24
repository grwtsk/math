# natDegree_trunc_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3bcbea1-a930-44f8-2f8b-63dfbd4ac60f",
  "kind": "theorem",
  "lexical_name": "natDegree_trunc_lt",
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
  "slug": "natdegree-trunc-lt--789cefdab077903a0a9bad02",
  "source": {
    "blob": "3530eaf1ad79b49ef54e0df6ab41a9800ba41a38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:789cefdab077903a0a9bad02019e6f675923b1b80d168e59e57b461c64a53049",
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

Occurrence: `result:a3bcbea1-a930-44f8-2f8b-63dfbd4ac60f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_trunc_lt (f : R⟦X⟧) (n) : (trunc (n + 1) f).natDegree < n + 1 := by
  rw [Nat.lt_succ_iff, natDegree_le_iff_coeff_eq_zero]
  intros
  rw [coeff_trunc]
  split_ifs with h
  · rw [lt_succ, ← not_lt] at h
    contradiction
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3530eaf1ad79b49ef54e0df6ab41a9800ba41a38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
