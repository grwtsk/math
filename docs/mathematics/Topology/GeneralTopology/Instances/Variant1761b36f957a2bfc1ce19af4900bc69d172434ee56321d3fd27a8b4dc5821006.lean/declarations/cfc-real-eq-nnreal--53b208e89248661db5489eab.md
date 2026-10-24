# cfc_real_eq_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a72d3e29-1f31-1d6a-6b45-f22ef40482d2",
  "kind": "lemma",
  "lexical_name": "cfc_real_eq_nnreal",
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
  "slug": "cfc-real-eq-nnreal--53b208e89248661db5489eab",
  "source": {
    "blob": "d8b6760c5b4da5b94d89e2494baebe95d7984d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 422,
    "path": "GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53b208e89248661db5489eab8eeafa2594ecdd7b360b243ea2a7a09b17e11311",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a72d3e29-1f31-1d6a-6b45-f22ef40482d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfc_real_eq_nnreal {f : ℝ → ℝ} (a : A) (hf_nonneg : ∀ x ∈ spectrum ℝ a, 0 ≤ f x)
    (ha : 0 ≤ a := by cfc_tac) : cfc f a = cfc (fun x : ℝ≥0 ↦ (f x).toNNReal) a := by
  rw [cfc_nnreal_eq_real ..]
  congr! 1 with x hx
  rw [x.coe_toNNReal (spectrum_nonneg_of_nonneg ha hx), (f x).coe_toNNReal (hf_nonneg x hx)]

end NNRealEqReal

section NNRealEqRealNonUnital

open NNReal

variable {A : Type*} [TopologicalSpace A] [NonUnitalRing A] [PartialOrder A] [StarRing A]
  [StarOrderedRing A] [Module ℝ A] [IsSemitopologicalRing A] [IsScalarTower ℝ A A]
  [SMulCommClass ℝ A A] [T2Space A] [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [NonnegSpectrumClass ℝ A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b6760c5b4da5b94d89e2494baebe95d7984d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
