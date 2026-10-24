# iteratedFDeriv_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17f214cf-f0be-9faf-4c3b-e5190544c079",
  "kind": "theorem",
  "lexical_name": "iteratedFDeriv_sum",
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
  "slug": "iteratedfderiv-sum--7d60c2c3ad038088f36a86fc",
  "source": {
    "blob": "8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 369,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d60c2c3ad038088f36a86fc65f1f74c88b9f173297caa3f03b8c58dd6fc0875",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17f214cf-f0be-9faf-4c3b-e5190544c079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDeriv_sum {ι : Type*} {f : ι → E → F} {u : Finset ι} {i : ℕ}
    (h : ∀ j ∈ u, ContDiff 𝕜 i (f j)) :
    iteratedFDeriv 𝕜 i (∑ j ∈ u, f j ·) = ∑ j ∈ u, iteratedFDeriv 𝕜 i (f j) :=
  funext fun x ↦ by simpa [iteratedFDerivWithin_univ] using
    iteratedFDerivWithin_sum_apply uniqueDiffOn_univ (mem_univ x) (h · · |>.contDiffWithinAt)

/-! ### Product of two functions -/

section MulProd

variable {𝔸 𝔸' ι 𝕜' : Type*} [NormedRing 𝔸] [NormedAlgebra 𝕜 𝔸] [NormedCommRing 𝔸']
  [NormedAlgebra 𝕜 𝔸'] [NormedField 𝕜'] [NormedAlgebra 𝕜 𝕜']

-- The product is smooth.
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
