# traceForm_genWeightSpace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05a85586-5530-4b4a-e45a-245b486fc665",
  "kind": "lemma",
  "lexical_name": "traceForm_genWeightSpace_eq",
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
  "slug": "traceform-genweightspace-eq--9f3168bb2a03065b5d539f2f",
  "source": {
    "blob": "91d80465789ad234c4fed4a843899231d82f8a46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f3168bb2a03065b5d539f2f57e98687bb08bcd2a086cf8377d80157f51d0927",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05a85586-5530-4b4a-e45a-245b486fc665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traceForm_genWeightSpace_eq [Module.Free R M]
    [IsDomain R] [IsPrincipalIdealRing R]
    [LieRing.IsNilpotent L] [IsNoetherian R M] [LinearWeights R L M] (χ : L → R) (x y : L) :
    traceForm R L (genWeightSpace M χ) x y = finrank R (genWeightSpace M χ) • (χ x * χ y) := by
  set d := finrank R (genWeightSpace M χ)
  have h₁ : χ y • d • χ x - χ y • χ x • (d : R) = 0 := by simp [mul_comm (χ x)]
  have h₂ : χ x • d • χ y = d • (χ x * χ y) := by
    simpa [nsmul_eq_mul, smul_eq_mul] using mul_left_comm (χ x) d (χ y)
  have := traceForm_eq_zero_of_isNilpotent R L (shiftedGenWeightSpace R L M χ)
  replace this := LinearMap.congr_fun (LinearMap.congr_fun this x) y
  rwa [LinearMap.zero_apply, LinearMap.zero_apply, traceForm_apply_apply,
    shiftedGenWeightSpace.toEnd_eq, shiftedGenWeightSpace.toEnd_eq,
    ← LinearEquiv.conj_comp, LinearMap.trace_conj', LinearMap.comp_sub, LinearMap.sub_comp,
    LinearMap.sub_comp, map_sub, map_sub, map_sub, LinearMap.comp_smul, LinearMap.smul_comp,
    LinearMap.comp_id, LinearMap.id_comp, map_smul, map_smul,
    trace_toEnd_genWeightSpace, trace_toEnd_genWeightSpace,
    LinearMap.comp_smul, LinearMap.smul_comp, LinearMap.id_comp, map_smul, map_smul,
    LinearMap.trace_id, ← traceForm_apply_apply, h₁, h₂, sub_zero, sub_eq_zero] at this

/-- The upper and lower central series of `L` are orthogonal w.r.t. the trace form of any Lie module
`M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d80465789ad234c4fed4a843899231d82f8a46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
