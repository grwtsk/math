# Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly_of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c1d1690-db20-57af-1ddc-0b2559c69a88",
  "kind": "theorem",
  "lexical_name": "Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly_of_splits",
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
  "slug": "algebra-isalgebraic-range-eval-eq-rootset-minpoly-of-splits--0e0e35b66e3670d4a5fbbf13",
  "source": {
    "blob": "17d3d8ce10e3e901cd41cd8a423020b8c63c5a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 365,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e0e35b66e3670d4a5fbbf139c12856eb0c051a38b8ef1cca2ac8d0c5e8e5ebd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c1d1690-db20-57af-1ddc-0b2559c69a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly_of_splits {F K : Type*} (L : Type*)
    [Field F] [Field K] [Field L] [Algebra F L] [Algebra F K]
    (hA : ∀ x : K, (minpoly F x).Splits (algebraMap F L))
    [Algebra.IsAlgebraic F K] (x : K) :
    (Set.range fun (ψ : K →ₐ[F] L) => ψ x) = (minpoly F x).rootSet L := by
  ext a
  rw [mem_rootSet_of_ne (minpoly.ne_zero (Algebra.IsIntegral.isIntegral x))]
  refine ⟨fun ⟨ψ, hψ⟩ ↦ ?_, fun ha ↦ IntermediateField.exists_algHom_of_splits_of_aeval
    (fun x ↦ ⟨Algebra.IsIntegral.isIntegral x, hA x⟩) ha⟩
  rw [← hψ, Polynomial.aeval_algHom_apply ψ x, minpoly.aeval, map_zero]

end Algebra.IsAlgebraic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d3d8ce10e3e901cd41cd8a423020b8c63c5a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
