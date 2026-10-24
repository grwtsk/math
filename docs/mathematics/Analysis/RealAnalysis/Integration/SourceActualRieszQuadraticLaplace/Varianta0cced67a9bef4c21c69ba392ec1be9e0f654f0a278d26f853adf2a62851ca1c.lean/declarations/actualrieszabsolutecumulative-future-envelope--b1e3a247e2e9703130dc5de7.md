# actualRieszAbsoluteCumulative_future_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84d72384-2a8d-07f2-45e6-279b17f9c896",
  "kind": "theorem",
  "lexical_name": "actualRieszAbsoluteCumulative_future_envelope",
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
  "slug": "actualrieszabsolutecumulative-future-envelope--b1e3a247e2e9703130dc5de7",
  "source": {
    "blob": "1ea6aa9a7f976a7cb4abc908264f02f4909c608c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1e3a247e2e9703130dc5de7b664560ff13e49fc85b8b1390b395edbcc96b593",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84d72384-2a8d-07f2-45e6-279b17f9c896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszAbsoluteCumulative_future_envelope {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {t : ℝ} (ht : 0 ≤ t) :
    actualRieszAbsoluteCumulative t ≤ M * (t ^ 2 / 4 + R ^ 2) := by
  by_cases h : 2 * R ≤ t
  · have hh := harea (t / 2) (by linarith)
    rw [show 2 * (t / 2) = t by ring] at hh
    have he : M * (t / 2) ^ 2 = M * (t ^ 2 / 4) := by ring
    rw [he] at hh
    exact hh.trans (by nlinarith [sq_nonneg R])
  · have h2R : 0 ≤ 2 * R := by linarith
    have hm : actualRieszAbsoluteCumulative t ≤ actualRieszAbsoluteCumulative (2 * R) :=
      intervalIntegral.integral_mono_interval le_rfl ht (le_of_not_ge h)
        (Eventually.of_forall fun _ => abs_nonneg _) (profile_intervalIntegrable h2R).abs
    exact hm.trans ((harea R le_rfl).trans (by nlinarith [sq_nonneg t]))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea6aa9a7f976a7cb4abc908264f02f4909c608c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
