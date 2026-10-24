# actualZeroMovingTail_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fb581e0-df3a-8ca8-033e-3f1edd39e614",
  "kind": "theorem",
  "lexical_name": "actualZeroMovingTail_norm_bound",
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
  "slug": "actualzeromovingtail-norm-bound--ad8c3c1b11dae543bef17be7",
  "source": {
    "blob": "ae995e8ba64e461d4cc593844d0e3e4cccaa0b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative01/Varianted106c2b3e2a335406732eac8c80252877e2b7d00750ca998fb21d2f6d47162d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad8c3c1b11dae543bef17be7eb1c4d38c5551d724e1be0af48ba9dc1b5d3d3b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative01/Varianted106c2b3e2a335406732eac8c80252877e2b7d00750ca998fb21d2f6d47162d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fb581e0-df3a-8ca8-033e-3f1edd39e614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroMovingTail_norm_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      ‖actualZeroHeightTail A (actualBumpMovingHeight A c)‖ ≤
        actualZeroMovingEnvelope A0 c A := by
  obtain ⟨A0, hA0, hb⟩ := actualZeroHeightTail_norm_bound
  refine ⟨A0, hA0, fun c A hc hA => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hh := hb A (actualBumpMovingHeight A c) hA1
    (actualZeroMovingHeight_ge_four c A hc hA)
  have ht : actualBumpMovingHeight A c ^ 5 = Real.exp ((2 * c - 1) * A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : Real.exp A = Real.exp (-2 * (c - 1) * A) *
      Real.exp ((2 * c - 1) * A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  refine hh.trans_eq ?_
  rw [ht]
  unfold actualBumpMovingHeight actualZeroMovingEnvelope
  rw [Real.log_exp, he]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative01/Varianted106c2b3e2a335406732eac8c80252877e2b7d00750ca998fb21d2f6d47162d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative01/Varianted106c2b3e2a335406732eac8c80252877e2b7d00750ca998fb21d2f6d47162d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae995e8ba64e461d4cc593844d0e3e4cccaa0b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
