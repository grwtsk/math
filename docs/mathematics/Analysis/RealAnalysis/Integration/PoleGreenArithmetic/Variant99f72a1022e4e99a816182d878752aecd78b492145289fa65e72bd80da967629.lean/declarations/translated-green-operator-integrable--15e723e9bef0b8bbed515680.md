# translated_green_operator_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed98239f-bc21-de68-5e44-b01d210c2297",
  "kind": "theorem",
  "lexical_name": "translated_green_operator_integrable",
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
  "slug": "translated-green-operator-integrable--15e723e9bef0b8bbed515680",
  "source": {
    "blob": "4542eb0b4186a5eaebfb61486e77f54a792ee7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e723e9bef0b8bbed5156803fffcedea5dea2b2d13ae5dd31560730736b12b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed98239f-bc21-de68-5e44-b01d210c2297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translated_green_operator_integrable (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f)
    (hcf : HasCompactSupport f) (x : ℝ) :
    Integrable (fun t ↦ poleSquaredGreenKernel (t - x) * poleSquaredDifferentialOperator f t) := by
  have hg : Continuous (fun t ↦ poleSquaredGreenKernel (t - x)) := by
    unfold poleSquaredGreenKernel
    fun_prop
  exact (hg.mul (pole_squared_operator_continuous f hf)).integrable_of_hasCompactSupport
    (pole_squared_operator_has_compact_support f hcf).mul_left

/-- Evenness of the actual Green kernel puts its translated weak atom at the source label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4542eb0b4186a5eaebfb61486e77f54a792ee7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
