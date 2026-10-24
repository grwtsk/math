# integrable_iteratedDeriv_mul_verticalOscillation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a49fc99-c8ca-0942-36bc-1a353af3450d",
  "kind": "lemma",
  "lexical_name": "integrable_iteratedDeriv_mul_verticalOscillation",
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
  "slug": "integrable-iteratedderiv-mul-verticaloscillation--0dd99988bcc0a53914ad8f71",
  "source": {
    "blob": "d3962dde4483a2918717b0ecc4424aa8dde52a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dd99988bcc0a53914ad8f71cbbec2006e541dfa627bcdd81d7ca78a70d83751",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a49fc99-c8ca-0942-36bc-1a353af3450d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integrable_iteratedDeriv_mul_verticalOscillation
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) (n : ℕ) :
    Integrable (fun x : ℝ ↦
      iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x) := by
  have hsmooth : ContDiff ℝ ∞
      (g.laplaceSliceSchwartz sigma : ℝ → ℂ) :=
    (g.laplaceSliceSchwartz sigma).smooth ⊤
  have hcontinuous : Continuous (fun x : ℝ ↦
      iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x) := by
    apply (hsmooth.continuous_iteratedDeriv n
      (mod_cast le_top)).mul
    unfold verticalOscillation
    fun_prop
  have hsupport : Function.support (fun x : ℝ ↦
      iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x) ⊆
      Set.Icc (-g.supportRadius) g.supportRadius := by
    exact (Function.support_mul_subset_left _ _).trans
      (support_iteratedDeriv_laplaceSlice_subset g sigma n)
  exact hcontinuous.integrable_of_hasCompactSupport
    (HasCompactSupport.of_support_subset_isCompact isCompact_Icc hsupport)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3962dde4483a2918717b0ecc4424aa8dde52a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
