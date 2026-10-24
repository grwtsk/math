# IntegrableOn.restrict_toMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e7d0ea9-a9bd-374a-9720-8fab1a40f247",
  "kind": "theorem",
  "lexical_name": "IntegrableOn.restrict_toMeasurable",
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
  "slug": "integrableon-restrict-tomeasurable--5b23cabecb569c83d786bf42",
  "source": {
    "blob": "798451013ebbcf882d5920f9b95d2fbbcd760f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 388,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b23cabecb569c83d786bf429dfc546393e3aad357df2146a15d668b40a28181",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e7d0ea9-a9bd-374a-9720-8fab1a40f247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntegrableOn.restrict_toMeasurable {f : α → ε'}
    (hf : IntegrableOn f s μ) (h's : ∀ x ∈ s, ‖f x‖ₑ ≠ 0) :
    μ.restrict (toMeasurable μ s) = μ.restrict s := by
  rcases exists_seq_strictAnti_tendsto' ENNReal.zero_lt_top with ⟨u, _, u_pos, u_lim⟩
  let v n := toMeasurable (μ.restrict s) { x | u n ≤ ‖f x‖ₑ }
  have A : ∀ n, μ (s ∩ v n) ≠ ∞ := by
    intro n
    rw [inter_comm, ← Measure.restrict_apply (measurableSet_toMeasurable _ _),
      measure_toMeasurable]
    exact (hf.measure_enorm_ge_lt_top (u_pos n).1 (u_pos n).2.ne).ne
  apply Measure.restrict_toMeasurable_of_cover _ A
  intro x hx
  obtain ⟨n, hn⟩ : ∃ n, u n < ‖f x‖ₑ :=
    ((tendsto_order.1 u_lim).2 _ (pos_of_ne_zero (h's x hx))).exists
  exact mem_iUnion.2 ⟨n, subset_toMeasurable _ _ hn.le⟩

-- TODO: investigate generalising this section to e-seminormed monoids
section ENormedAddMonoid

variable {ε' : Type*} [TopologicalSpace ε'] [ENormedAddMonoid ε'] [PseudoMetrizableSpace ε']

-- TODO: generalise this to e-seminormed commutative monoids,
-- by merely assuming ‖f x‖ₑ vanishes on t \ s
/-- If a function is integrable on a set `s`, and its enorm vanishes on `t \ s`,
then it is integrable on `t` if `t` is null-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798451013ebbcf882d5920f9b95d2fbbcd760f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
