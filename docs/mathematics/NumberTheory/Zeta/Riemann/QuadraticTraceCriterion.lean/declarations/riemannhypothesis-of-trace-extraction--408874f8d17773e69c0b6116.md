# riemannHypothesis_of_trace_extraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5dd0f53-cf4c-2f07-38fc-ae719e262de7",
  "kind": "theorem",
  "lexical_name": "riemannHypothesis_of_trace_extraction",
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
  "slug": "riemannhypothesis-of-trace-extraction--408874f8d17773e69c0b6116",
  "source": {
    "blob": "7a14f52760075ecc0d56f1ab8602ec472db6d13a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:408874f8d17773e69c0b61165394750fecb205eb28c74eb51c3cf2de51491ed6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5dd0f53-cf4c-2f07-38fc-ae719e262de7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannHypothesis_of_trace_extraction
    (hextract : ∀ s : ℂ, NontrivialZetaZero s →
      ∃ (W weight error : ℕ → ℝ) (L : ℝ),
        0 < L ∧
        (∀ n, W n = weight n * witnessTrace (s.re - 1 / 2) s.im + error n) ∧
        (∀ n, 0 ≤ W n) ∧
        Tendsto weight atTop (𝓝 L) ∧ Tendsto error atTop (𝓝 0)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_quadraticTraceNonnegative.mpr
  intro s hs
  obtain ⟨W, weight, error, L, hL, heq, hW, hw, he⟩ := hextract s hs
  have hlim : Tendsto W atTop (𝓝 (L * witnessTrace (s.re - 1 / 2) s.im)) := by
    simp_rw [funext heq]
    simpa using (hw.mul_const (witnessTrace (s.re - 1 / 2) s.im)).add he
  have hnonneg : 0 ≤ L * witnessTrace (s.re - 1 / 2) s.im :=
    ge_of_tendsto hlim (Eventually.of_forall hW)
  exact (mul_nonneg_iff_of_pos_left hL).mp hnonneg

end GRWTSK.NumberTheory.Zeta.Riemann
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a14f52760075ecc0d56f1ab8602ec472db6d13a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
