# Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca52bcfe-976f-c7a8-6ff3-c466a420c5db",
  "kind": "theorem",
  "lexical_name": "Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly",
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
  "slug": "algebra-isalgebraic-range-eval-eq-rootset-minpoly--c23e062f2b5f2412a7fef83a",
  "source": {
    "blob": "d05c2dddcddcc926e98a56952b70c6dbbde87a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 547,
    "path": "GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23e062f2b5f2412a7fef83af0212d15f4d1f3fc805ced931001381fabf48288",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca52bcfe-976f-c7a8-6ff3-c466a420c5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly {F K} (A) [Field F] [Field K] [Field A]
    [IsAlgClosed A] [Algebra F K] (hK : Algebra.IsAlgebraic F K) [Algebra F A] (x : K) :
    (Set.range fun ψ : K →ₐ[F] A => ψ x) = (minpoly F x).rootSet A := by
  have hFK := Algebra.isAlgebraic_iff_isIntegral.1 hK
  ext a
  rw [mem_rootSet_of_ne (minpoly.ne_zero (hFK x))]
  refine' ⟨_, fun ha => _⟩
  · rintro ⟨ψ, rfl⟩; rw [aeval_algHom_apply ψ x, minpoly.aeval, map_zero]
  let Fx := AdjoinRoot (minpoly F x)
  have hx : aeval x (minpoly F x) = 0 := minpoly.aeval F x
  letI : Algebra Fx A := (AdjoinRoot.lift (algebraMap F A) a ha).toAlgebra
  letI : Algebra Fx K := (AdjoinRoot.lift (algebraMap F K) x hx).toAlgebra
  haveI : IsScalarTower F Fx A := IsScalarTower.of_ring_hom (AdjoinRoot.liftHom _ a ha)
  haveI : IsScalarTower F Fx K := IsScalarTower.of_ring_hom (AdjoinRoot.liftHom _ x hx)
  haveI : Fact (Irreducible <| minpoly F x) := ⟨minpoly.irreducible <| hFK x⟩
  let ψ₀ : K →ₐ[Fx] A := IsAlgClosed.lift (Algebra.isAlgebraic_of_larger_base Fx hK)
  exact
    ⟨ψ₀.restrictScalars F,
      (congr_arg ψ₀ (AdjoinRoot.lift_root hx).symm).trans <|
        (ψ₀.commutes _).trans <| AdjoinRoot.lift_root ha⟩
#align algebra.is_algebraic.range_eval_eq_root_set_minpoly Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05c2dddcddcc926e98a56952b70c6dbbde87a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
