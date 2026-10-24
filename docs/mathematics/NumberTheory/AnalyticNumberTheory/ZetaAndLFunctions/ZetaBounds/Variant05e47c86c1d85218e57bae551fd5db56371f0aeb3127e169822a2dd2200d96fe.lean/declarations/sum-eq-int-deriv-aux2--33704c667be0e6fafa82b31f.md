# sum_eq_int_deriv_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8449749700ae3c61707103913ebe40c0507a6e07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 725,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81b31464-26c9-0e8e-f4dc-852278d83df5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3475182-d0e3-4e15-1387-d22d8e63e634",
  "kind": "lemma",
  "lexical_name": "sum_eq_int_deriv_aux2",
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
  "slug": "sum-eq-int-deriv-aux2--33704c667be0e6fafa82b31f",
  "source": {
    "blob": "8449749700ae3c61707103913ebe40c0507a6e07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 725,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33704c667be0e6fafa82b31f9fb3beebb2b9799d72a2c1674c7abbc299e8b05d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3475182-d0e3-4e15-1387-d22d8e63e634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_eq_int_deriv_aux2 {φ : ℝ → ℂ} {a b : ℝ} (c : ℂ)
    (φDiff : ∀ x ∈ [[a, b]], HasDerivAt φ (deriv φ x) x)
    (derivφCont : ContinuousOn (deriv φ) [[a, b]]) :
    ∫ (x : ℝ) in a..b, (c - x) * deriv φ x =
      (c - b) * φ b - (c - a) * φ a + ∫ (x : ℝ) in a..b, φ x := by
  set u := fun (x : ℝ) ↦ c - x
  set u' := fun (x : ℝ) ↦ (-1 : ℂ)
  have hu : ∀ x ∈ uIcc a b, HasDerivAt u (u' x) x := by
    exact fun x _ ↦ by convert LinearDerivative_ofReal x (-1 : ℂ) c; ring
  have hu' : IntervalIntegrable u' MeasureTheory.volume a b := by
    apply Continuous.intervalIntegrable; continuity
  have hv' : IntervalIntegrable (deriv φ) MeasureTheory.volume a b :=
    derivφCont.intervalIntegrable
  convert intervalIntegral.integral_mul_deriv_eq_deriv_mul hu φDiff hu' hv' using 1; simp [u, u']; rfl


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8449749700ae3c61707103913ebe40c0507a6e07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
