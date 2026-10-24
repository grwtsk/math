# compProd_eq_sum_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbee2e68-14f3-f416-ac71-7109d674238a",
  "kind": "theorem",
  "lexical_name": "compProd_eq_sum_compProd",
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
  "slug": "compprod-eq-sum-compprod--64802100ac5dc0d76cd1db8b",
  "source": {
    "blob": "b6c5842276844a959b363d3a5e7e41fc25bcf772",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 476,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64802100ac5dc0d76cd1db8b2bc2659736c290a8bbece781a2015d84316cac73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbee2e68-14f3-f416-ac71-7109d674238a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compProd_eq_sum_compProd (κ : kernel α β) [IsSFiniteKernel κ] (η : kernel (α × β) γ)
    [IsSFiniteKernel η] : κ ⊗ₖ η = kernel.sum fun n => kernel.sum fun m => seq κ n ⊗ₖ seq η m := by
  ext a s hs; simp_rw [kernel.sum_apply' _ a hs]; rw [compProd_eq_tsum_compProd κ η a hs]
#align probability_theory.kernel.comp_prod_eq_sum_comp_prod ProbabilityTheory.kernel.compProd_eq_sum_compProd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c5842276844a959b363d3a5e7e41fc25bcf772` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
