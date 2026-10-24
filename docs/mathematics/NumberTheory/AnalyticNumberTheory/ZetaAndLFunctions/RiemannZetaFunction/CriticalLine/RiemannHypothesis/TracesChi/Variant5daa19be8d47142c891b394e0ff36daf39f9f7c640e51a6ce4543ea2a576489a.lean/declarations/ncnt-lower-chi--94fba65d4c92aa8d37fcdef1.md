# Ncnt_lower_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac3fc3ba-fc35-10e4-8075-b9dccdfc3c46",
  "kind": "lemma",
  "lexical_name": "Ncnt_lower_chi",
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
  "slug": "ncnt-lower-chi--94fba65d4c92aa8d37fcdef1",
  "source": {
    "blob": "002d9e76f53226936f0854e872936b9f9316bb88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94fba65d4c92aa8d37fcdef14c4155cc64395d2e293fc392c4f769eb20e2351a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac3fc3ba-fc35-10e4-8075-b9dccdfc3c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ncnt_lower_chi : ∀ᶠ T in atTop, T * Zeta23.l T / (4 * π) ≤ D.Ncnt T := by
  obtain ⟨A, hA, hN⟩ := h.rvm.eventually_le
  filter_upwards [hN, eventually_ge_atTop (4 * π * A), eventually_l_ge 0, eventually_gt_atTop 0]
    with T hN hTA hl hT0
  have hπ := Real.pi_pos
  have hle := l_le_ell1q h.one_le_q hT0
  have h1 : -(A * Zeta23.l T) ≤ D.Ncnt T - T * ell1q q T / (2 * π) := (abs_le.mp hN).1
  have h2 : T * Zeta23.l T ≤ T * ell1q q T :=
    mul_le_mul_of_nonneg_left hle (by linarith)
  have h3 : T * Zeta23.l T / (2 * π) ≤ T * ell1q q T / (2 * π) :=
    div_le_div_of_nonneg_right h2 (by positivity)
  have h4 : T * Zeta23.l T / (4 * π) = T * Zeta23.l T / (2 * π) - T * Zeta23.l T / (4 * π) := by
    ring
  have h5 : A * Zeta23.l T ≤ T * Zeta23.l T / (4 * π) := by
    rw [le_div_iff₀ (by positivity)]; nlinarith
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002d9e76f53226936f0854e872936b9f9316bb88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
