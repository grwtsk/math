# source_perron_integral_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9788d0010ba723237421a5d6eca70c200fd974be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f89a237a-66eb-fde4-f9e7-10a2919e6eb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9ed2e80-097c-d74b-73c1-c6e379275b11",
  "kind": "theorem",
  "lexical_name": "source_perron_integral_exact",
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
  "slug": "source-perron-integral-exact--a45444b5320ae8cf7c319487",
  "source": {
    "blob": "9788d0010ba723237421a5d6eca70c200fd974be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82fPrimePowerPerron/Variant78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a45444b5320ae8cf7c319487354fb50cc2cf8d8ffa12bb511f3c10d3f92e4c06",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82fPrimePowerPerron/Variant78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9ed2e80-097c-d74b-73c1-c6e379275b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_perron_integral_exact (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    (primePowerContribution explicitSecondDerivative A : ℂ) =
      (1 / (2 * Real.pi) : ℂ) *
        ∫ t : ℝ, sourcePerronIntegrand A ((c : ℂ) + (t : ℂ) * Complex.I) := by
  have hp := Zeta23.WeilEF.prime_side_line
    (source_complex_kernel_cont_diff_two A hA)
    (source_complex_kernel_has_compact_support A hA)
    (c := c + 1 / 2) (by linarith)
  rw [source_prime_sum_eq_strict A hA] at hp
  rw [← hp]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  have hs : ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
      ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 := by push_cast; ring
  rw [hs, source_hfn_eq_bilateral_laplace]
  unfold sourcePerronIntegrand logDeriv
  simp only [Pi.div_apply]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82fPrimePowerPerron/Variant78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82fPrimePowerPerron/Variant78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9788d0010ba723237421a5d6eca70c200fd974be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
