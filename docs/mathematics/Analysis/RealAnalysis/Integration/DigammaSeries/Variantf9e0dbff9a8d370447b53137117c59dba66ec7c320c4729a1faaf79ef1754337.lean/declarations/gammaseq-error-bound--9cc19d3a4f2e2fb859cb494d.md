# gammaSeq_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18d2db69-1ca4-468b-afff-be75202000f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:818ffa03-3b45-20ce-b1a2-832175f042a1",
  "kind": "theorem",
  "lexical_name": "gammaSeq_error_bound",
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
  "slug": "gammaseq-error-bound--9cc19d3a4f2e2fb859cb494d",
  "source": {
    "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cc19d3a4f2e2fb859cb494d40942ee213d34398aacf0e7f39ac645ee92e3d3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:818ffa03-3b45-20ce-b1a2-832175f042a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gammaSeq_error_bound {a b : ℝ} (ha : 0 < a) (hb : 0 < b)
    {z : ℂ} (hza : a ≤ z.re) (hzb : z.re ≤ b) {n : ℕ} (hn : n ≠ 0) :
    ‖Complex.Gamma z - Complex.GammaSeq z n‖ ≤
      ∫ x : ℝ in Ioi 0, errorEnvelope n a b x := by
  have hz : 0 < z.re := ha.trans_le hza
  rw [Complex.Gamma_eq_integral hz, Complex.GammaIntegral, gammaSeq_integral hz hn,
    ← integral_sub (Complex.GammaIntegral_convergent hz) (euler_integrand_integrable hz n)]
  apply norm_integral_le_of_norm_le (errorEnvelope_integrable ha hb n)
  apply (ae_restrict_iff' measurableSet_Ioi).mpr
  filter_upwards with x hx
  rw [← sub_mul, ← Complex.ofReal_sub, norm_mul,
    Complex.norm_of_nonneg (sub_nonneg.mpr (eulerKernel_le n x)),
    Complex.norm_cpow_eq_rpow_re_of_pos hx, Complex.sub_re, Complex.one_re]
  exact mul_le_mul_of_nonneg_left (rpow_strip_bound hx hza hzb)
    (sub_nonneg.mpr (eulerKernel_le n x))

/-- Euler's finite Gamma approximants converge uniformly on every positive real-part
    strip, including unbounded imaginary coordinate; the error bound is independent of it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f850a6724d3ea807c539e9e8902e7d4e27ce803c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
