# MeasureTheory.Memℒp.of_comp_antilipschitzWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b71046f3-91bc-02b1-f7cf-a254ff20e08b",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.Memℒp.of_comp_antilipschitzWith",
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
  "slug": "measuretheory-mem-p-of-comp-antilipschitzwith--7db8f94dc17709def050bd29",
  "source": {
    "blob": "145ecda4c8c3a4972cf1bcac83026924983d5cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1021,
    "line": 1006,
    "path": "GRWTSK/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db8f94dc17709def050bd29ea27435f1baac19abbd444edc1159ef565dce05f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b71046f3-91bc-02b1-f7cf-a254ff20e08b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1021.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.Memℒp.of_comp_antilipschitzWith {α E F} {K'} [MeasurableSpace α]
    {μ : Measure α} [NormedAddCommGroup E] [NormedAddCommGroup F] {f : α → E} {g : E → F}
    (hL : Memℒp (g ∘ f) p μ) (hg : UniformContinuous g) (hg' : AntilipschitzWith K' g)
    (g0 : g 0 = 0) : Memℒp f p μ := by
  have A : ∀ x, ‖f x‖ ≤ K' * ‖g (f x)‖ := by
    intro x
    -- TODO: add `AntilipschitzWith.le_mul_nnnorm_sub` and `AntilipschitzWith.le_mul_norm`
    rw [← dist_zero_right, ← dist_zero_right, ← g0]
    apply hg'.le_mul_dist
  have B : AEStronglyMeasurable f μ :=
    (hg'.uniformEmbedding hg).embedding.aestronglyMeasurable_comp_iff.1 hL.1
  exact hL.of_le_mul B (Filter.eventually_of_forall A)
#align measure_theory.mem_ℒp.of_comp_antilipschitz_with MeasureTheory.Memℒp.of_comp_antilipschitzWith

namespace LipschitzWith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `145ecda4c8c3a4972cf1bcac83026924983d5cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
