# reduced_quotient_analytic_and_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb75c2facd32dd8d1dbdf1da32407db24d683189",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d238e4c0-f181-910e-ba4d-69158bb945eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a704c4e-5e3f-5201-a5dd-c1ff4c91e114",
  "kind": "theorem",
  "lexical_name": "reduced_quotient_analytic_and_order",
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
  "slug": "reduced-quotient-analytic-and-order--404c8e455d453f913e28656b",
  "source": {
    "blob": "cb75c2facd32dd8d1dbdf1da32407db24d683189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 44,
    "path": "GRWTSK/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:404c8e455d453f913e28656b5af9008f5d4469be6025ec2aafeeb14af404b80b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a704c4e-5e3f-5201-a5dd-c1ff4c91e114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduced_quotient_analytic_and_order {f : ℂ → ℂ} {z₀ : ℂ} {n : ℕ}
    (hf : AnalyticAt ℂ f z₀) (horder : analyticOrderAt f z₀ = n + 1) :
    AnalyticAt ℂ (fun z ↦ f z / (f z + deriv f z)) z₀ ∧
      analyticOrderAt (fun z ↦ f z / (f z + deriv f z)) z₀ = 1 := by
  let q : ℂ → ℂ := fun z ↦ f z / (f z + deriv f z)
  have hq : MeromorphicAt q z₀ := hf.meromorphicAt.div (hf.add hf.deriv).meromorphicAt
  have hqorder : meromorphicOrderAt q z₀ = (1 : ℤ) :=
    reduced_quotient_meromorphic_order hf horder
  obtain ⟨u, hu, hu₀, hqu⟩ := (meromorphicOrderAt_eq_int_iff hq).mp hqorder
  have hf₀ : f z₀ = 0 := (analyticOrderAt_ne_zero.mp (by rw [horder]; simp)).2
  have hq₀ : q z₀ = 0 := by simp [q, hf₀]
  have hqu' : q =ᶠ[𝓝 z₀] fun z ↦ (z - z₀) * u z := by
    filter_upwards [eventually_nhdsWithin_iff.mp hqu] with z hz
    by_cases hzz : z = z₀
    · simp [hzz, hq₀]
    · simpa only [zpow_one, smul_eq_mul] using hz hzz
  have hqa : AnalyticAt ℂ q z₀ :=
    (analyticAt_congr hqu').mpr ((analyticAt_id.sub analyticAt_const).mul hu)
  refine ⟨hqa, hqa.analyticOrderAt_eq_natCast.mpr ⟨u, hu, hu₀, ?_⟩⟩
  simpa only [pow_one, smul_eq_mul, Filter.EventuallyEq] using hqu'

/-- Exact simple-, double-, and triple-source-zero specializations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb75c2facd32dd8d1dbdf1da32407db24d683189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
