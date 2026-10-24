# minpoly_coeff_zero_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c29adf9-c441-8c9e-d7b6-63b020a04924",
  "kind": "theorem",
  "lexical_name": "minpoly_coeff_zero_of_injective",
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
  "slug": "minpoly-coeff-zero-of-injective--c939c8a6f1df0aeda41d27c2",
  "source": {
    "blob": "4ec867fc08e67abf8e4755806870e28da2daa59f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 115,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c939c8a6f1df0aeda41d27c292d99c1e4ab0d793fba85ef5992a40fd52e7c2dd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c29adf9-c441-8c9e-d7b6-63b020a04924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minpoly_coeff_zero_of_injective [Nontrivial R] (hf : Function.Injective f) :
    (minpoly R f).coeff 0 ≠ 0 := by
  intro h
  obtain ⟨P, hP⟩ := X_dvd_iff.2 h
  have hdegP : P.degree < (minpoly R f).degree := by
    rw [hP, mul_comm]
    refine degree_lt_degree_mul_X fun h => ?_
    rw [h, mul_zero] at hP
    exact minpoly.ne_zero (isIntegral f) hP
  have hPmonic : P.Monic := by
    suffices (minpoly R f).Monic by
      rwa [Monic.def, hP, mul_comm, leadingCoeff_mul_X, ← Monic.def] at this
    exact minpoly.monic (isIntegral f)
  have hzero : aeval f (minpoly R f) = 0 := minpoly.aeval _ _
  simp only [hP, Module.End.mul_eq_comp, LinearMap.ext_iff, hf, aeval_X, map_eq_zero_iff, coe_comp,
    map_mul, zero_apply, Function.comp_apply] at hzero
  exact not_le.2 hdegP (minpoly.min _ _ hPmonic (LinearMap.ext hzero))

end CayleyHamilton

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec867fc08e67abf8e4755806870e28da2daa59f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
