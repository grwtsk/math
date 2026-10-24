# Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1740914a27f12e5f513bad7fae5158bba963861d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 539,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea6fdb4a-b9e2-2224-b937-5853a267b461",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c2344c2-08ff-d125-45a1-ff366903ce62",
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
  "slug": "algebra-isalgebraic-range-eval-eq-rootset-minpoly--060061c5ecc27d249889a3eb",
  "source": {
    "blob": "1740914a27f12e5f513bad7fae5158bba963861d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 539,
    "path": "GRWTSK/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:060061c5ecc27d249889a3ebf6625939f5b45d410834baecd8d509a225cec498",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c2344c2-08ff-d125-45a1-ff366903ce62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–559.

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

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1740914a27f12e5f513bad7fae5158bba963861d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
