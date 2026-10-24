# second_smaller_terms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:953712d7-9071-472e-77e8-95f416274ea2",
  "kind": "lemma",
  "lexical_name": "second_smaller_terms",
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
  "slug": "second-smaller-terms--bcbb69b3baa43952efd52c97",
  "source": {
    "blob": "6718a5b2b25e4753f41d1454de228202f3cb531e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1341,
    "line": 1313,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcbb69b3baa43952efd52c9703a614732ac71a29efbecab432793c0186bf9ea1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:953712d7-9071-472e-77e8-95f416274ea2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1313–1341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma second_smaller_terms (f : ℝ → ℝ) (hf : Tendsto f atTop (nhds 0)) (δ : ℝ) (hδ : δ > 0) :
    ∀ᶠ x : ℝ in atTop,
      (1 + δ) * (x / Real.log x) > (1 + f x) * (x / Real.log x) := by
  have first_term := bound_f_second_term f hf δ hδ

  simp only [_root_.add_lt_add_iff_left, eventually_atTop, ge_iff_le] at first_term
  obtain ⟨p, hp⟩ := first_term
  simp only [gt_iff_lt, eventually_atTop, ge_iff_le]
  let a := max p 2
  have ha: ∀ (b : ℝ), a ≤ b → 1 + δ > 1 + f ( b) := by
    intro b hb
    have a_ge_p: p <= a := by simp [a]
    specialize hp b (by linarith)
    linarith
  use a
  intro b hb
  specialize ha b hb
  have rhs_nonzero:  b / log ( b) > 0 := by
    simp only [sup_le_iff, a] at hb
    obtain ⟨_, hb2⟩ := hb
    have log_pos: Real.log (b) > 0 := by
      refine (Real.log_pos_iff ?_).mpr ?_
      · positivity
      · linarith
    positivity
  rw [mul_lt_mul_iff_left₀]
  · exact ha
  · linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean#L1313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6718a5b2b25e4753f41d1454de228202f3cb531e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
