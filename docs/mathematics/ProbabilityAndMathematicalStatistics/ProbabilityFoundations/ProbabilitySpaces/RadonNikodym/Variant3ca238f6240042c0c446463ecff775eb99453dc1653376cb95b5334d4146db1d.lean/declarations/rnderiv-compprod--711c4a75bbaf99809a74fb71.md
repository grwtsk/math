# rnDeriv_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33cb0dda-1a4d-f1de-5e71-1427c1154ac9",
  "kind": "lemma",
  "lexical_name": "rnDeriv_compProd",
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
  "slug": "rnderiv-compprod--711c4a75bbaf99809a74fb71",
  "source": {
    "blob": "cc3f7e000f3f37b6a49cf35971591c7cb796a7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:711c4a75bbaf99809a74fb71367f320c0f19d0a74e5aa5bcc6ab3d30cbe7fb13",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33cb0dda-1a4d-f1de-5e71-1427c1154ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_compProd [IsFiniteMeasure μ] [IsFiniteKernel κ] [IsFiniteKernel η]
    (h_ac : μ ⊗ₘ κ ≪ μ ⊗ₘ η) (ν : Measure α) [IsFiniteMeasure ν] :
    (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) =ᵐ[ν ⊗ₘ η]
      (fun p ↦ μ.rnDeriv ν p.1 * (μ ⊗ₘ κ).rnDeriv (μ ⊗ₘ η) p) := by
  refine Filter.EventuallyEq.trans (Measure.rnDeriv_mul_rnDeriv h_ac).symm ?_
  filter_upwards [rnDeriv_measure_compProd_left μ ν η] with p hp
  rw [Pi.mul_apply, hp, mul_comm]

section CountableOrCountablyGenerated

variable [MeasurableSpace.CountableOrCountablyGenerated α β]

/-- The Radon-Nikodym derivative `∂(μ ⊗ₘ κ)/∂(ν ⊗ₘ η)` equals the product of `∂μ/∂ν` and
`∂κ/∂η`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc3f7e000f3f37b6a49cf35971591c7cb796a7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
