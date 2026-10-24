# traceForm_eq_sum_finrank_nsmul_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80eda0b2-eb56-4f84-35e1-ca3ddb487fed",
  "kind": "lemma",
  "lexical_name": "traceForm_eq_sum_finrank_nsmul_mul",
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
  "slug": "traceform-eq-sum-finrank-nsmul-mul--d0178c28b21aa935c013c7b7",
  "source": {
    "blob": "91d80465789ad234c4fed4a843899231d82f8a46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 445,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0178c28b21aa935c013c7b7cdf016d28273773308b1f07e81372fc22f914701",
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

Occurrence: `result:80eda0b2-eb56-4f84-35e1-ca3ddb487fed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traceForm_eq_sum_finrank_nsmul_mul (x y : L) :
    traceForm K L M x y = ∑ χ : Weight K L M, finrank K (genWeightSpace M χ) • (χ x * χ y) := by
  have hxy : ∀ χ : Weight K L M, MapsTo (toEnd K L M x ∘ₗ toEnd K L M y)
      (genWeightSpace M χ) (genWeightSpace M χ) :=
    fun χ m hm ↦ LieSubmodule.lie_mem _ <| LieSubmodule.lie_mem _ hm
  classical
  have hds := DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top
    (LieSubmodule.iSupIndep_toSubmodule.mpr <| iSupIndep_genWeightSpace' K L M)
    (LieSubmodule.iSup_toSubmodule_eq_top.mpr <| iSup_genWeightSpace_eq_top' K L M)
  simp_rw [traceForm_apply_apply, LinearMap.trace_eq_sum_trace_restrict hds hxy,
    ← traceForm_genWeightSpace_eq K L M _ x y]
  rfl

/-- See also `LieModule.traceForm_eq_sum_finrank_nsmul'` for an expression omitting the zero
weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d80465789ad234c4fed4a843899231d82f8a46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
