# tao_bound_at_gamma_1000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb0de1cf-7216-0d25-6b67-9f156d2440dd",
  "kind": "theorem",
  "lexical_name": "tao_bound_at_gamma_1000",
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
  "slug": "tao-bound-at-gamma-1000--ccf12c991fe6b998449b4d6b",
  "source": {
    "blob": "cfe11fa473cbdbde0df8457a3b3f26f9e4675dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaoPNT742/Variantad49c29e4ac6827fc34b3734748cbf871905fa9598c691c9f2e68f608cceaf7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccf12c991fe6b998449b4d6b785fb047f57997b842815d5f264ae13a62f90ed8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaoPNT742/Variantad49c29e4ac6827fc34b3734748cbf871905fa9598c691c9f2e68f608cceaf7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb0de1cf-7216-0d25-6b67-9f156d2440dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tao_bound_at_gamma_1000 :
    ∀ γ ∈ Set.Icc (1000:ℝ) 1000,
    (334:ℚ)/1000 / (Real.sqrt γ * γ) ≤ (2:ℚ)/100000 := by
  certify_bound

/-! ## Summary

Verified in LeanCert:
1. sin(1/2) ∈ [0.479, 0.480] ✓
2. 1/sin(1/2) ∈ [2.08, 2.09] ✓
3. |1/sin(1/2) - 2| ≤ 0.09 → |c_ϑ| ≤ 0.045 ✓
4. C_{σ,ϑ} ≤ 0.176σ + 0.246 ✓
5. At σ = 1/2: C ≤ 0.334 ✓
6. Tao's bound decays as γ^{-3/2}, faster than our γ^{-1} ✓

**Key insight**: Tao's Proposition 7.4.2 gives TIGHTER bounds than
our naive amplitude analysis. The c_ϑ correction term captures
the phase structure we observed empirically!

This suggests using Tao's partial sum formula to improve our
explicit formula bounds.
-/

#check sin_half_lower
#check csc_minus_two_bound
#check C_bound_general
#check tao_bound_at_gamma_100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaoPNT742/Variantad49c29e4ac6827fc34b3734748cbf871905fa9598c691c9f2e68f608cceaf7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaoPNT742/Variantad49c29e4ac6827fc34b3734748cbf871905fa9598c691c9f2e68f608cceaf7c.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfe11fa473cbdbde0df8457a3b3f26f9e4675dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
