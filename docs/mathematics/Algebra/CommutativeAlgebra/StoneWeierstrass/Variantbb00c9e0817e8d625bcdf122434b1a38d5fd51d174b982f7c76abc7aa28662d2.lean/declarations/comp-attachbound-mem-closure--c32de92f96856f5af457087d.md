# comp_attachBound_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:803da6c6-d0ff-0ffd-ff3e-74c398ae55c1",
  "kind": "theorem",
  "lexical_name": "comp_attachBound_mem_closure",
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
  "slug": "comp-attachbound-mem-closure--c32de92f96856f5af457087d",
  "source": {
    "blob": "2423b858edcaa7a4364c27ac2b4d5ea335513cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 97,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c32de92f96856f5af457087da14e3b106298f4e3dd23094f0f5883f99a01d602",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:803da6c6-d0ff-0ffd-ff3e-74c398ae55c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_attachBound_mem_closure (A : Subalgebra ℝ C(X, ℝ)) (f : A)
    (p : C(Set.Icc (-‖f‖) ‖f‖, ℝ)) : p.comp (attachBound (f : C(X, ℝ))) ∈ A.topologicalClosure := by
  -- `p` itself is in the closure of polynomials, by the Weierstrass theorem,
  have mem_closure : p ∈ (polynomialFunctions (Set.Icc (-‖f‖) ‖f‖)).topologicalClosure :=
    continuousMap_mem_polynomialFunctions_closure _ _ p
  -- and so there are polynomials arbitrarily close.
  have frequently_mem_polynomials := mem_closure_iff_frequently.mp mem_closure
  -- To prove `p.comp (attachBound f)` is in the closure of `A`,
  -- we show there are elements of `A` arbitrarily close.
  apply mem_closure_iff_frequently.mpr
  -- To show that, we pull back the polynomials close to `p`,
  refine'
    ((compRightContinuousMap ℝ (attachBound (f : C(X, ℝ)))).continuousAt
            p).tendsto.frequently_map
      _ _ frequently_mem_polynomials
  -- but need to show that those pullbacks are actually in `A`.
  rintro _ ⟨g, ⟨-, rfl⟩⟩
  simp only [SetLike.mem_coe, AlgHom.coe_toRingHom, compRightContinuousMap_apply,
    Polynomial.toContinuousMapOnAlgHom_apply]
  apply polynomial_comp_attachBound_mem
#align continuous_map.comp_attach_bound_mem_closure ContinuousMap.comp_attachBound_mem_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2423b858edcaa7a4364c27ac2b4d5ea335513cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
