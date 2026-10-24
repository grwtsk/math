# withDensity_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d865c138-617e-eadc-c764-6ddb86e82368",
  "kind": "theorem",
  "lexical_name": "withDensity_tsum",
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
  "slug": "withdensity-tsum--26cb74db1bedd95916aae940",
  "source": {
    "blob": "df9241b96cb717091381bf794f301db3001cd86c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26cb74db1bedd95916aae9405a5774067dca379db4c4589342b52c43e2d4275c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d865c138-617e-eadc-c764-6ddb86e82368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensity_tsum [Countable ι] (κ : Kernel α β) [IsSFiniteKernel κ] {f : ι → α → β → ℝ≥0∞}
    (hf : ∀ i, Measurable (Function.uncurry (f i))) :
    withDensity κ (∑' n, f n) = Kernel.sum fun n => withDensity κ (f n) := by
  have h_sum_a : ∀ a, Summable fun n => f n a := fun a => Pi.summable.mpr fun b => ENNReal.summable
  have h_sum : Summable fun n => f n := Pi.summable.mpr h_sum_a
  ext a s hs
  rw [sum_apply' _ a hs, Kernel.withDensity_apply' κ _ a s]
  swap
  · have : Function.uncurry (∑' n, f n) = ∑' n, Function.uncurry (f n) := by
      ext1 p
      simp only [Function.uncurry_def]
      rw [Pi.tsum_apply h_sum, Pi.tsum_apply (h_sum_a _), Pi.tsum_apply]
      exact Pi.summable.mpr fun p => ENNReal.summable
    rw [this]
    fun_prop
  have : ∫⁻ b in s, (∑' n, f n) a b ∂κ a = ∫⁻ b in s, ∑' n, (fun b => f n a b) b ∂κ a := by
    congr with b
    rw [Pi.tsum_apply h_sum, Pi.tsum_apply (h_sum_a a)]
  rw [this, lintegral_tsum fun n => by fun_prop]
  congr with n
  rw [Kernel.withDensity_apply' _ (hf n) a s]

/-- If a kernel `κ` is finite and a function `f : α → β → ℝ≥0∞` is bounded, then `withDensity κ f`
is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df9241b96cb717091381bf794f301db3001cd86c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
