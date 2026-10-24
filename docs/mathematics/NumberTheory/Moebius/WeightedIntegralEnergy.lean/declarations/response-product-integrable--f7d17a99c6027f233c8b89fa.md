# response_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5944ddb6-7b43-1995-8f3a-d05a1ae9a673",
  "kind": "theorem",
  "lexical_name": "response_product_integrable",
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
  "slug": "response-product-integrable--f7d17a99c6027f233c8b89fa",
  "source": {
    "blob": "d8bd8170dea9989588a3d99911fc7af58652d4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d17a99c6027f233c8b89fac8363162eb47c1594b65412daf0e7b7ccfbc7eb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5944ddb6-7b43-1995-8f3a-d05a1ae9a673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_product_integrable (T : ℝ) (m n : ℕ) :
    IntegrableOn (fun u ↦ response m u * response n u) (Ioc 0 T) := by
  have hbase : IntegrableOn (fun u ↦ responseKernel m u * responseKernel n u) (Icc 0 T) :=
    ((response_kernel_continuous m).mul (response_kernel_continuous n)).integrableOn_Icc
  have hn : IntegrableOn ((Ici (Real.log (n : ℝ))).indicator
      (fun u ↦ responseKernel m u * responseKernel n u)) (Icc 0 T) :=
    hbase.indicator measurableSet_Ici
  have hm : IntegrableOn ((Ici (Real.log (m : ℝ))).indicator
      ((Ici (Real.log (n : ℝ))).indicator
        (fun u ↦ responseKernel m u * responseKernel n u))) (Icc 0 T) :=
    hn.indicator measurableSet_Ici
  have heq : (fun u ↦ response m u * response n u) =
      (Ici (Real.log (m : ℝ))).indicator
        ((Ici (Real.log (n : ℝ))).indicator
          (fun u ↦ responseKernel m u * responseKernel n u)) := by
    funext u
    by_cases hmu : Real.log (m : ℝ) ≤ u <;>
      by_cases hnu : Real.log (n : ℝ) ≤ u <;> simp [response, hmu, hnu]
  rw [heq]
  exact hm.mono_set Ioc_subset_Icc_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8bd8170dea9989588a3d99911fc7af58652d4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
