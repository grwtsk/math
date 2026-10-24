# cfcₙ_complex_eq_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf7785f4-bce8-4a80-ccd9-7370467daebb",
  "kind": "lemma",
  "lexical_name": "cfcₙ_complex_eq_real",
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
  "slug": "cfc-complex-eq-real--b0b78311458c68ed9dfa3444",
  "source": {
    "blob": "d8b6760c5b4da5b94d89e2494baebe95d7984d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 392,
    "path": "GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0b78311458c68ed9dfa3444052be85a60dd3eaae275318e3793fcbae912e3aa",
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

Occurrence: `result:bf7785f4-bce8-4a80-ccd9-7370467daebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_complex_eq_real {f : ℂ → ℂ} (a : A) (hf_real : ∀ x ∈ σₙ ℂ a, star (f x) = f x)
    (ha : IsSelfAdjoint a := by cfc_tac) :
    cfcₙ f a = cfcₙ (fun x : ℝ ↦ (f x).re) a := by
  rw [cfcₙ_real_eq_complex ..]
  congr! 1 with x hx
  simp_rw [RCLike.star_def, RCLike.conj_eq_iff_re, RCLike.re_eq_complex_re,
    RCLike.ofReal_eq_complex_ofReal] at hf_real
  rw [← QuasispectrumRestricts.real_iff.mp ha.quasispectrumRestricts _ hx, hf_real _ hx]

end RealEqComplexNonUnital

section NNRealEqReal

open NNReal

variable {A : Type*} [TopologicalSpace A] [Ring A] [PartialOrder A] [StarRing A]
  [StarOrderedRing A] [Algebra ℝ A] [IsSemitopologicalRing A] [T2Space A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [NonnegSpectrumClass ℝ A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b6760c5b4da5b94d89e2494baebe95d7984d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
