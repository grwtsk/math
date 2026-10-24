# selberg_dirichlet_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd91e822855e86eef2d1f1c76f45f823201c73ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d27a89e2-d6cb-39af-a149-ca6f42414063",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:247cd4b2-5657-2513-c767-1e85ee84cc7c",
  "kind": "theorem",
  "lexical_name": "selberg_dirichlet_identity",
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
  "slug": "selberg-dirichlet-identity--c8abfb4e115095a35fa7e67d",
  "source": {
    "blob": "bd91e822855e86eef2d1f1c76f45f823201c73ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8abfb4e115095a35fa7e67d3c9f8d685c3539e26455f9651746f5cb0258b606",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:247cd4b2-5657-2513-c767-1e85ee84cc7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selberg_dirichlet_identity :
    (μ : ArithmeticFunction ℝ) * (ArithmeticFunction.log.pmul ArithmeticFunction.log) =
      ArithmeticFunction.log.pmul ArithmeticFunction.vonMangoldt +
        ArithmeticFunction.vonMangoldt * ArithmeticFunction.vonMangoldt := by
  have h := log_pmul_convolution ArithmeticFunction.vonMangoldt (ζ : ArithmeticFunction ℝ)
  rw [vonMangoldt_mul_zeta, log_pmul_zeta] at h
  have hfirst : (μ : ArithmeticFunction ℝ) *
      ((ArithmeticFunction.log.pmul ArithmeticFunction.vonMangoldt) * ζ) =
      ArithmeticFunction.log.pmul ArithmeticFunction.vonMangoldt := by
    calc
      _ = (ArithmeticFunction.log.pmul ArithmeticFunction.vonMangoldt) *
          ((μ : ArithmeticFunction ℝ) * ζ) := by ring
      _ = _ := by rw [coe_moebius_mul_coe_zeta, mul_one]
  have hsecond : (μ : ArithmeticFunction ℝ) *
      (ArithmeticFunction.vonMangoldt * ArithmeticFunction.log) =
      ArithmeticFunction.vonMangoldt * ArithmeticFunction.vonMangoldt := by
    calc
      _ = ArithmeticFunction.vonMangoldt * ((μ : ArithmeticFunction ℝ) * ArithmeticFunction.log) := by ring
      _ = _ := by rw [moebius_mul_log_eq_vonMangoldt]
  rw [h, mul_add, hfirst, hsecond]

/-- The Selberg coefficient preserves every divisor in the Mangoldt self-convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd91e822855e86eef2d1f1c76f45f823201c73ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
