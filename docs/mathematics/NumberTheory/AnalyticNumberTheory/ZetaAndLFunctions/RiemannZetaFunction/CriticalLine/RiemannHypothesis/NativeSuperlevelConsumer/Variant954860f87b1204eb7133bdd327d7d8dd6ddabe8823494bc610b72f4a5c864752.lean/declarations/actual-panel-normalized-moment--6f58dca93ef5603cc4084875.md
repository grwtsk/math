# actual_panel_normalized_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a00e762-734c-d565-3d76-ddd9aa6f247d",
  "kind": "theorem",
  "lexical_name": "actual_panel_normalized_moment",
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
  "slug": "actual-panel-normalized-moment--6f58dca93ef5603cc4084875",
  "source": {
    "blob": "d438fdcb11a47361db6ca7b5a4d4e289e6718879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeSuperlevelConsumer/Variant954860f87b1204eb7133bdd327d7d8dd6ddabe8823494bc610b72f4a5c864752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f58dca93ef5603cc40848757f953215b95612802a17527062bc94cd651d3efc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeSuperlevelConsumer/Variant954860f87b1204eb7133bdd327d7d8dd6ddabe8823494bc610b72f4a5c864752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a00e762-734c-d565-3d76-ddd9aa6f247d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_panel_normalized_moment {N : ℕ} {s : Finset ℕ} {H p : ℝ}
    (hN : 1 ≤ N) (hs : s.Nonempty) (hH : 0 < H) (hp : 0 < p)
    (hpanel : ∀ j ∈ s, 0 ≤ storage N j ∧ storage N j ≤ H) :
    (∑ j ∈ s, probability N s j) = 1 ∧
      (∑ j ∈ s, weight N j * ENNReal.ofReal ((storage N j) ^ p)) / totalWeight N s =
        ENNReal.ofReal (H ^ p) * (ENNReal.ofReal p *
          ∫⁻ t in Set.Ioc (0 : ℝ) 1, Q N s H t * ENNReal.ofReal (t ^ (p - 1))) := by
  have hf0 : ∀ j, 0 ≤ profile N s H j := by
    intro j
    unfold profile
    split_ifs with hj
    · exact div_nonneg (hpanel j hj).1 hH.le
    · rfl
  have hf1 : ∀ j ∈ s, profile N s H j ≤ 1 := by
    intro j hj
    rw [profile, if_pos hj]
    exact (div_le_one hH).mpr (hpanel j hj).2
  have h := scaled_panel_moment s (probability N s) (measurable_of_countable _)
    hf0 hf1 hp hH.le
  refine ⟨normalized_widths_sum_one hN hs, ?_⟩
  change _ = _ * (_ * ∫⁻ t in Set.Ioc (0 : ℝ) 1,
    superlevelMass s (probability N s) (profile N s H) t * ENNReal.ofReal (t ^ (p - 1)))
  rw [← h, div_eq_mul_inv, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro j hj
  rw [profile, if_pos hj]
  have hscale : H * (storage N j / H) = storage N j := by field_simp
  rw [hscale]
  unfold probability
  rw [div_eq_mul_inv]
  ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeSuperlevelConsumer/Variant954860f87b1204eb7133bdd327d7d8dd6ddabe8823494bc610b72f4a5c864752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeSuperlevelConsumer/Variant954860f87b1204eb7133bdd327d7d8dd6ddabe8823494bc610b72f4a5c864752.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d438fdcb11a47361db6ca7b5a4d4e289e6718879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
