# Lp_add_le_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:005db07c-3364-88e3-75bc-53ab935a173f",
  "kind": "theorem",
  "lexical_name": "Lp_add_le_tsum",
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
  "slug": "lp-add-le-tsum--9155e9b81d2e515dbdfbc873",
  "source": {
    "blob": "bcc82cc37a97b11af0da6a5d4aebbcd8c8939b6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 500,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9155e9b81d2e515dbdfbc873317405e6b09e626658c9725f8c496f6170359e96",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:005db07c-3364-88e3-75bc-53ab935a173f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lp_add_le_tsum {f g : ι → ℝ≥0} {p : ℝ} (hp : 1 ≤ p) (hf : Summable fun i => f i ^ p)
    (hg : Summable fun i => g i ^ p) :
    (Summable fun i => (f i + g i) ^ p) ∧
      (∑' i, (f i + g i) ^ p) ^ (1 / p) ≤
        (∑' i, f i ^ p) ^ (1 / p) + (∑' i, g i ^ p) ^ (1 / p) := by
  have pos : 0 < p := lt_of_lt_of_le zero_lt_one hp
  have H₁ : ∀ s : Finset ι,
      (∑ i in s, (f i + g i) ^ p) ≤
        ((∑' i, f i ^ p) ^ (1 / p) + (∑' i, g i ^ p) ^ (1 / p)) ^ p := by
    intro s
    rw [← NNReal.rpow_one_div_le_iff pos]
    refine' le_trans (Lp_add_le s f g hp) (add_le_add _ _) <;>
        rw [NNReal.rpow_le_rpow_iff (one_div_pos.mpr pos)] <;>
      refine' sum_le_tsum _ (fun _ _ => zero_le _) _
    exacts [hf, hg]
  have bdd : BddAbove (Set.range fun s => ∑ i in s, (f i + g i) ^ p) := by
    refine' ⟨((∑' i, f i ^ p) ^ (1 / p) + (∑' i, g i ^ p) ^ (1 / p)) ^ p, _⟩
    rintro a ⟨s, rfl⟩
    exact H₁ s
  have H₂ : Summable _ := (hasSum_of_isLUB _ (isLUB_ciSup bdd)).summable
  refine' ⟨H₂, _⟩
  rw [NNReal.rpow_one_div_le_iff pos]
  refine' tsum_le_of_sum_le H₂ H₁
#align nnreal.Lp_add_le_tsum NNReal.Lp_add_le_tsum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc82cc37a97b11af0da6a5d4aebbcd8c8939b6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
