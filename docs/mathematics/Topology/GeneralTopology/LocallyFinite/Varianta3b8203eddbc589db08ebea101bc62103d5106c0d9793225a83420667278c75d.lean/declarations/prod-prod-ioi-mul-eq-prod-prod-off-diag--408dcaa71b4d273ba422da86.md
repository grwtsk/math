# prod_prod_Ioi_mul_eq_prod_prod_off_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7af0df58-052f-a479-b9c0-79ccdbf858f2",
  "kind": "theorem",
  "lexical_name": "prod_prod_Ioi_mul_eq_prod_prod_off_diag",
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
  "slug": "prod-prod-ioi-mul-eq-prod-prod-off-diag--408dcaa71b4d273ba422da86",
  "source": {
    "blob": "07690eda2f8498e868200ee71df29762b213e7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1161,
    "line": 1151,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:408dcaa71b4d273ba422da86ee1a09d16785b4ed00533ca1e849d7e17e1e2a84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7af0df58-052f-a479-b9c0-79ccdbf858f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1151–1161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_prod_Ioi_mul_eq_prod_prod_off_diag [Fintype ι] [LinearOrder ι]
    [LocallyFiniteOrderTop ι] [LocallyFiniteOrderBot ι] [CommMonoid α] (f : ι → ι → α) :
    (∏ i, ∏ j in Ioi i, f j i * f i j) = ∏ i, ∏ j in {i}ᶜ, f j i := by
  simp_rw [← Ioi_disjUnion_Iio, prod_disjUnion, prod_mul_distrib]
  congr 1
  rw [prod_sigma', prod_sigma']
  refine' prod_bij' (fun i _ => ⟨i.2, i.1⟩) _ _ (fun i _ => ⟨i.2, i.1⟩) _ _ _ <;> simp
#align finset.prod_prod_Ioi_mul_eq_prod_prod_off_diag Finset.prod_prod_Ioi_mul_eq_prod_prod_off_diag
#align finset.sum_sum_Ioi_add_eq_sum_sum_off_diag Finset.sum_sum_Ioi_add_eq_sum_sum_off_diag

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean#L1151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07690eda2f8498e868200ee71df29762b213e7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
