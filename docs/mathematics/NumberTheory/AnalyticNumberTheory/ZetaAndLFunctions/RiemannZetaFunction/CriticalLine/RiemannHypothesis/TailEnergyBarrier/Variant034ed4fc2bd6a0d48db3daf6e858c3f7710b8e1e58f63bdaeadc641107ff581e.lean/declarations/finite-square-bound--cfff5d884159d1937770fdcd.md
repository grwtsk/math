# finite_square_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c0faa63-6f84-9a30-3ac7-95f70ed8eab2",
  "kind": "theorem",
  "lexical_name": "finite_square_bound",
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
  "slug": "finite-square-bound--cfff5d884159d1937770fdcd",
  "source": {
    "blob": "6fc7e2929a98b6a41527ca982e2ccb32023d0274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TailEnergyBarrier/Variant034ed4fc2bd6a0d48db3daf6e858c3f7710b8e1e58f63bdaeadc641107ff581e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfff5d884159d1937770fdcdc70786c2046de1df7d124943ba72f4af7c52ee4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TailEnergyBarrier/Variant034ed4fc2bd6a0d48db3daf6e858c3f7710b8e1e58f63bdaeadc641107ff581e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c0faa63-6f84-9a30-3ac7-95f70ed8eab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_square_bound (w ρ : ℕ → ℝ) (hw : ∀ j, 0 < w j) (N : ℕ) :
    (∑ j ∈ Finset.range N, ρ j) ^ 2 ≤
      (∑ j ∈ Finset.range N, w j) * (∑ j ∈ Finset.range N, ρ j ^ 2 / w j) := by
  by_cases hN : N = 0
  · subst N
    simp
  have hW : 0 < ∑ j ∈ Finset.range N, w j :=
    Finset.sum_pos (fun j _ => hw j) ⟨0, Finset.mem_range.mpr (by omega)⟩
  have h := WeightedHodge.finite_refinement_mono (Finset.range N) w ρ
    (fun j _ => hw j) hW.ne'
  simpa only [mul_comm] using (div_le_iff₀ hW).mp h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TailEnergyBarrier/Variant034ed4fc2bd6a0d48db3daf6e858c3f7710b8e1e58f63bdaeadc641107ff581e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TailEnergyBarrier/Variant034ed4fc2bd6a0d48db3daf6e858c3f7710b8e1e58f63bdaeadc641107ff581e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fc7e2929a98b6a41527ca982e2ccb32023d0274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
