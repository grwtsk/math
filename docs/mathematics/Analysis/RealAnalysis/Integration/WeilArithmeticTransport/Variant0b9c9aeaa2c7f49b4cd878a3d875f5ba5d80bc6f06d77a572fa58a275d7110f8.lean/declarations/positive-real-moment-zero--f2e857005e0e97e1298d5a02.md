# positive_real_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b50e3cd-dba6-2fe4-6cb2-5a46e6018ab9",
  "kind": "theorem",
  "lexical_name": "positive_real_moment_zero",
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
  "slug": "positive-real-moment-zero--f2e857005e0e97e1298d5a02",
  "source": {
    "blob": "6e884fb374952af11dd5fd933095555694ca37ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 252,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2e857005e0e97e1298d5a025a00390398a9ac1c69e88dcae425ff1bb6b0cc35",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b50e3cd-dba6-2fe4-6cb2-5a46e6018ab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem positive_real_moment_zero
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    (∫ x : ℝ, Real.exp (x / 2) * smoothedTest A ε hε x) = 0 := by
  have heq :
      ((∫ x : ℝ, Real.exp (x / 2) * smoothedTest A ε hε x : ℝ) : ℂ) =
        smoothedBilateralTransform A ε hε (1 / 2) := by
    rw [← integral_complex_ofReal, smoothedBilateralTransform]
    apply integral_congr_ae
    exact Eventually.of_forall fun x ↦ by
      have hx : ((x / 2 : ℝ) : ℂ) = (1 / 2 : ℂ) * (x : ℂ) := by
        push_cast
        ring
      simp only [Complex.ofReal_mul, Complex.ofReal_exp, hx]
      exact mul_comm _ _
  have hz := (smoothed_pole_bilateral A ε hA hε).1
  exact_mod_cast heq.trans hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e884fb374952af11dd5fd933095555694ca37ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
