# iteratedDeriv_laplaceSliceSchwartz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25a23398-aa0a-6e6f-e2ce-56b763b5b4a8",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_laplaceSliceSchwartz",
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
  "slug": "iteratedderiv-laplacesliceschwartz--69900dfdfad544a00109646c",
  "source": {
    "blob": "d3962dde4483a2918717b0ecc4424aa8dde52a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69900dfdfad544a00109646cca761312da7772b6b21d3f669b6e294ffcd1dcde",
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

Occurrence: `result:25a23398-aa0a-6e6f-e2ce-56b763b5b4a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDeriv_laplaceSliceSchwartz
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) (n : ℕ) (x : ℝ) :
    iteratedDeriv n (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x =
      ∑ i ∈ Finset.range (n + 1),
        n.choose i * iteratedDeriv i (g : ℝ → ℂ) x *
          ((((sigma : ℂ) - (1 / 2 : ℂ)) ^ (n - i)) *
            Complex.exp (((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ))) := by
  change iteratedDeriv n
      ((g : ℝ → ℂ) *
        fun x : ℝ ↦
          Complex.exp (((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ))) x = _
  rw [iteratedDeriv_mul]
  · simp_rw [iteratedDeriv_cexp_real_const_mul]
  · exact g.smooth.contDiffAt.of_le (mod_cast le_top)
  · have hcoe : ContDiff ℝ ∞ (fun x : ℝ ↦ (x : ℂ)) :=
      Complex.ofRealCLM.contDiff
    have hlinear : ContDiff ℝ ∞
        (fun x : ℝ ↦ ((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ)) :=
      contDiff_const.mul hcoe
    exact (Complex.contDiff_exp.comp hlinear).contDiffAt.of_le
      (mod_cast le_top)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3962dde4483a2918717b0ecc4424aa8dde52a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
