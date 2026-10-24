# properPower_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3568007bb600d27e57edf73f439920cc7325021a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:713aac81-d43e-c18b-949a-d83902d8aaf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e37ca38-7f78-8a35-d8bf-a1b8ff726d65",
  "kind": "theorem",
  "lexical_name": "properPower_integrand_integrable",
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
  "slug": "properpower-integrand-integrable--49b9c86ccbc91e843acde3a2",
  "source": {
    "blob": "3568007bb600d27e57edf73f439920cc7325021a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 188,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b9c86ccbc91e843acde3a25ff6bff464a4a2e1393bce10781bafc8a7c19f9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e37ca38-7f78-8a35-d8bf-a1b8ff726d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPower_integrand_integrable (N : ℕ) :
    IntegrableOn (fun x : ℝ => (Chebyshev.psi x - Chebyshev.theta x) / x ^ 2)
      (Set.Icc 1 (N : ℝ)) := by
  have hc : ContinuousOn (fun x : ℝ => (x ^ 2)⁻¹) (Set.Icc 1 (N : ℝ)) :=
    (continuousOn_id.pow 2).inv₀
      (by intro x hx; exact pow_ne_zero 2 (by linarith [hx.1] : x ≠ 0))
  have hi := integrableOn_mul_sum_Icc properPowerCoefficient
    (a := (1 : ℝ)) (b := (N : ℝ)) (m := 0) (by norm_num) hc.integrableOn_Icc
  convert hi using 1
  ext x
  rw [properPower_prefix]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3568007bb600d27e57edf73f439920cc7325021a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
