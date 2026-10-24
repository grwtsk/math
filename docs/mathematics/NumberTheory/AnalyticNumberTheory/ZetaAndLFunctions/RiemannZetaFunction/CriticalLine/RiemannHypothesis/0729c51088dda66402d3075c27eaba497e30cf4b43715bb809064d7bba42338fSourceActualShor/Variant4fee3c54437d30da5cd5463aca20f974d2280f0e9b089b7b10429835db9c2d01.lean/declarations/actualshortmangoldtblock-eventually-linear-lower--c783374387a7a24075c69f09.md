# actualShortMangoldtBlock_eventually_linear_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cecc4a36-b535-26a1-1bdb-b2d310deb537",
  "kind": "theorem",
  "lexical_name": "actualShortMangoldtBlock_eventually_linear_lower",
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
  "slug": "actualshortmangoldtblock-eventually-linear-lower--c783374387a7a24075c69f09",
  "source": {
    "blob": "ece0c6ace335d185d7aa8cbe967c4d07a16c98e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0729c51088dda66402d3075c27eaba497e30cf4b43715bb809064d7bba42338fSourceActualShor/Variant4fee3c54437d30da5cd5463aca20f974d2280f0e9b089b7b10429835db9c2d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c783374387a7a24075c69f09b35b044893373183b829a213e996eeb0b644073b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0729c51088dda66402d3075c27eaba497e30cf4b43715bb809064d7bba42338fSourceActualShor/Variant4fee3c54437d30da5cd5463aca20f974d2280f0e9b089b7b10429835db9c2d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cecc4a36-b535-26a1-1bdb-b2d310deb537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortMangoldtBlock_eventually_linear_lower :
    ∃ R : ℝ, 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A → A / 4 ≤ actualShortMangoldtBlock A := by
  obtain ⟨R, hR, hpsi⟩ := actualPsi_square_eventually_lower
  refine ⟨R, hR, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hs := actualShortMangoldtBlock_ge_psi (hR.trans hA)
  have he : A / 4 = (A ^ 2 / 2) / (2 * A) := by field_simp; ring
  rw [he]
  exact (div_le_div_of_nonneg_right (hpsi A hA) (by positivity)).trans hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0729c51088dda66402d3075c27eaba497e30cf4b43715bb809064d7bba42338fSourceActualShor/Variant4fee3c54437d30da5cd5463aca20f974d2280f0e9b089b7b10429835db9c2d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0729c51088dda66402d3075c27eaba497e30cf4b43715bb809064d7bba42338fSourceActualShor/Variant4fee3c54437d30da5cd5463aca20f974d2280f0e9b089b7b10429835db9c2d01.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece0c6ace335d185d7aa8cbe967c4d07a16c98e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
