# add_evalSet_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dba4993d-d0ef-e7cf-782b-84fc4127532d",
  "kind": "theorem",
  "lexical_name": "add_evalSet_of_mem",
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
  "slug": "add-evalset-of-mem--c51e4db3e3e87957031c7a2b",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1141,
    "line": 1118,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c51e4db3e3e87957031c7a2be45368776128ac3a5205a5a1caad0999ffb24a48",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba4993d-d0ef-e7cf-782b-84fc4127532d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1118–1141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_evalSet_of_mem {tm1 tm2 : TaylorModel} {x : ℝ}
    (hcenter : tm1.center = tm2.center)
    {v1 v2 : ℝ} (hv1 : v1 ∈ tm1.evalSet x) (hv2 : v2 ∈ tm2.evalSet x) :
    v1 + v2 ∈ (TaylorModel.add tm1 tm2).evalSet x := by
  simp only [evalSet, Set.mem_setOf_eq] at hv1 hv2 ⊢
  obtain ⟨r1, hr1, heq1⟩ := hv1
  obtain ⟨r2, hr2, heq2⟩ := hv2
  refine ⟨r1 + r2, IntervalRat.mem_add hr1 hr2, ?_⟩
  simp only [TaylorModel.add]
  have hcast : (tm2.center : ℝ) = tm1.center := by exact_mod_cast hcenter.symm
  calc v1 + v2
      = (Polynomial.aeval (x - tm1.center) tm1.poly + r1)
        + (Polynomial.aeval (x - tm2.center) tm2.poly + r2) := by rw [heq1, heq2]
    _ = (Polynomial.aeval (x - tm1.center) tm1.poly
        + Polynomial.aeval (x - tm1.center) tm2.poly) + (r1 + r2) := by
          simp only [hcast]; ring
    _ = Polynomial.aeval (x - tm1.center) (tm1.poly + tm2.poly) + (r1 + r2) := by
          simp only [map_add]

end TaylorModel

/-! ### Polynomial helper lemmas for multiplication -/

/-- truncPoly + tailPoly = original polynomial -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L1118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
