# pow_natDegree_le_of_aeval_zero_of_monic_mem_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec04a158-dc90-93cf-76b0-214f4ddd4aae",
  "kind": "theorem",
  "lexical_name": "pow_natDegree_le_of_aeval_zero_of_monic_mem_map",
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
  "slug": "pow-natdegree-le-of-aeval-zero-of-monic-mem-map--e21398370efe1c0ab6cc3c9d",
  "source": {
    "blob": "7d860baf8ccc6eeee94762c32c8386f1fe3e230b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 142,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e21398370efe1c0ab6cc3c9d9c0ae1c2abd859065760b5cb5900d60852320da5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec04a158-dc90-93cf-76b0-214f4ddd4aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_natDegree_le_of_aeval_zero_of_monic_mem_map (hf : f.IsWeaklyEisensteinAt 𝓟)
    {x : S} (hx : aeval x f = 0) (hmo : f.Monic) :
    ∀ i, (f.map (algebraMap R S)).natDegree ≤ i → x ^ i ∈ 𝓟.map (algebraMap R S) := by
  suffices x ^ (f.map (algebraMap R S)).natDegree ∈ 𝓟.map (algebraMap R S) by
    intro i hi
    obtain ⟨k, hk⟩ := exists_add_of_le hi
    rw [hk, pow_add]
    exact mul_mem_right _ _ this
  rw [aeval_def, eval₂_eq_eval_map, ← IsRoot.def] at hx
  exact pow_natDegree_le_of_root_of_monic_mem (hf.map _) hx (hmo.map _) _ rfl.le

end CommRing

end IsWeaklyEisensteinAt

section ScaleRoots

variable {A : Type*} [CommRing R] [CommRing A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d860baf8ccc6eeee94762c32c8386f1fe3e230b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
