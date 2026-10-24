# term_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd2d687b-a312-744c-48bd-a2a42d4bd47a",
  "kind": "theorem",
  "lexical_name": "term_hasDerivAt",
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
  "slug": "term-hasderivat--af3da307d70944cfcd938826",
  "source": {
    "blob": "a66d3eba1308bd338147c127cce247b4ff778d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af3da307d70944cfcd9388264ae4baa0cad0e58c093008d15784b3169b3f4030",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd2d687b-a312-744c-48bd-a2a42d4bd47a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem term_hasDerivAt {n : ℕ} (hn : 0 < n) {s : ℝ} (hs : (1:ℝ)/2 < s) :
    HasDerivAt (ZetaAsymptotics.term n)
      (∫ x : ℝ in (n:ℝ)..(n+1), cellDerivative n s x) s := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ:=volume.restrict (Ioc (n:ℝ) (n+1)))
    (F:=fun u x : ℝ => cellKernel n u x) (F':=fun u x : ℝ => cellDerivative n u x)
    (bound:=fun _ : ℝ => derivativeMajorant n)
    (Ioi_mem_nhds hs)
    (Eventually.of_forall (fun u => (cellKernel_integrable hn u).aestronglyMeasurable))
    (cellKernel_integrable hn s)
    (cellDerivative_integrable hn s).aestronglyMeasurable
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      intro u hu
      simpa only [Real.norm_eq_abs] using cellDerivative_bound hn hu hx)
    (integrableOn_const (C:=derivativeMajorant n) (by simp))
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      intro u _
      exact cellKernel_hasDerivAt n u ((show (0:ℝ)<n by exact_mod_cast hn).trans hx.1))
  convert! h.2 using 1
  · funext u
    exact intervalIntegral.integral_of_le (by linarith : (n:ℝ) ≤ n+1)
  · exact intervalIntegral.integral_of_le (by linarith : (n:ℝ) ≤ n+1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a66d3eba1308bd338147c127cce247b4ff778d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
