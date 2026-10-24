# LSeries_tau_eq_riemannZeta_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf9bfc459f0e3cd584d2ef9726e580780198b141",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c809d292-92c3-ecf1-6c2a-f3a3374dd490",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccc83497-dab1-18a6-d43a-69d47f4c3f0d",
  "kind": "theorem",
  "lexical_name": "LSeries_tau_eq_riemannZeta_sq",
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
  "slug": "lseries-tau-eq-riemannzeta-sq--23c319bb262a2631b7393985",
  "source": {
    "blob": "cf9bfc459f0e3cd584d2ef9726e580780198b141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 179,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23c319bb262a2631b7393985df402ba91967e770166d26361d8e508c54dfad6e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccc83497-dab1-18a6-d43a-69d47f4c3f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeries_tau_eq_riemannZeta_sq {s : ℂ} (hs : 1 < s.re) :
    LSeries (↗τ) s = riemannZeta s ^ 2 := by
  have h1 : LSeries (↗(ζ * ζ)) s = LSeries (↗((ζ : ArithmeticFunction ℂ) * ζ)) s := by
    congr 1; ext n; simp only [← natCoe_mul, natCoe_apply]
  have h2 : LSeries (↗((ζ : ArithmeticFunction ℂ) * ζ)) s = LSeries (↗ζ) s * LSeries (↗ζ) s :=
    LSeries_mul' (LSeriesSummable_zeta_iff.mpr hs) (LSeriesSummable_zeta_iff.mpr hs)
  rw [← zeta_mul_zeta, h1, h2, LSeries_zeta_eq_riemannZeta hs, pow_two]

/-- `d k` is the k-fold divisor function: the number of ways to write n as an ordered
    product of k natural numbers. Equivalently, the Dirichlet convolution of ζ with
    itself k times. We have `d 0 = 1` (identity), `d 1 = ζ`, `d 2 = σ 0`. -/
@[blueprint
  "d"
  (title := "d")
  (statement := /-- $d_k$ is the $k$-fold divisor function: the number of ways to write $n$ as an ordered
    product of $k$ natural numbers. Equivalently, the Dirichlet convolution of $\zeta$ with
    itself $k$ times.-/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9bfc459f0e3cd584d2ef9726e580780198b141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
