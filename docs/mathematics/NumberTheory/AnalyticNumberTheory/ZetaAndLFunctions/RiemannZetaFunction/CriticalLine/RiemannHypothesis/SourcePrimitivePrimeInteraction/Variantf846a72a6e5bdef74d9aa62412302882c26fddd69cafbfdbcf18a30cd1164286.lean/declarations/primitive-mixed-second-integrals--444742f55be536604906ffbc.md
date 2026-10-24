# primitive_mixed_second_integrals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16fa4330c4fef26686485ab22425ac94088f11f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48d3a727-63d9-c974-4a3b-fba358a28d7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e59107e5-b5ea-a9a4-8577-785defb535bd",
  "kind": "theorem",
  "lexical_name": "primitive_mixed_second_integrals",
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
  "slug": "primitive-mixed-second-integrals--444742f55be536604906ffbc",
  "source": {
    "blob": "16fa4330c4fef26686485ab22425ac94088f11f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variantf846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:444742f55be536604906ffbc36ff693f55a5f740ef220f1a4bc466b909fcebaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variantf846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e59107e5-b5ea-a9a4-8577-785defb535bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_mixed_second_integrals {A : ℝ} (hA : 0 < A) (s : ℝ) :
    (∫ x : ℝ, deriv (deriv (normalizedPrimitiveBump A)) x *
      normalizedPrimitiveBump A (x - s)) = -primitiveCorrelationOne A s ∧
    (∫ x : ℝ, normalizedPrimitiveBump A x *
      deriv (deriv (normalizedPrimitiveBump A)) (x - s)) =
        -primitiveCorrelationOne A s := by
  let b := normalizedPrimitiveBump A
  have hc : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hA
  have hc' : ContDiff ℝ 1 (deriv b) := hc.deriv'
  have hb := hc.continuous
  have hb' := hc'.continuous
  have hb'' := hc'.continuous_deriv_one
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hA
  have hd (x : ℝ) : HasDerivAt b (deriv b x) x :=
    (hc.differentiable (by norm_num) x).hasDerivAt
  have hd' (x : ℝ) : HasDerivAt (deriv b) (deriv (deriv b) x) x :=
    (hc'.differentiable (by norm_num) x).hasDerivAt
  have left := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := deriv b) (u' := deriv (deriv b))
    (v := fun x => b (x - s)) (v' := fun x => deriv b (x - s))
    (fun x _ => hd' x)
    (fun x _ => by
      simpa using (hd (x - s)).comp x ((hasDerivAt_id x).sub_const s))
    (compact_shifted_product_integrable hb' hb' hs.deriv s)
    (compact_shifted_product_integrable hb'' hb hs.deriv.deriv s)
    (compact_shifted_product_integrable hb' hb hs.deriv s)
  have right := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := b) (u' := deriv b)
    (v := fun x => deriv b (x - s)) (v' := fun x => deriv (deriv b) (x - s))
    (fun x _ => hd x)
    (fun x _ => by
      simpa using (hd' (x - s)).comp x ((hasDerivAt_id x).sub_const s))
    (compact_shifted_product_integrable hb hb'' hs s)
    (compact_shifted_product_integrable hb' hb' hs.deriv s)
    (compact_shifted_product_integrable hb hb' hs s)
  change (∫ x : ℝ, deriv (deriv b) x * b (x - s)) =
      -(∫ x : ℝ, deriv b x * deriv b (x - s)) ∧
    (∫ x : ℝ, b x * deriv (deriv b) (x - s)) =
      -(∫ x : ℝ, deriv b x * deriv b (x - s))
  exact ⟨by linarith, right⟩

/-- The unchanged q=b''-b/4 source retains its three signed primitive correlations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variantf846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variantf846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16fa4330c4fef26686485ab22425ac94088f11f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
