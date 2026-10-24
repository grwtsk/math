# tendsto_measure_Ico_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e420b50-ba92-3ca7-258d-dff17ce08bdd",
  "kind": "theorem",
  "lexical_name": "tendsto_measure_Ico_atTop",
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
  "slug": "tendsto-measure-ico-attop--15d49d3f43c0307708a1e9b2",
  "source": {
    "blob": "0588602c394b79b9ab0b5bd11ed4cb6579bbc7ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2745,
    "line": 2727,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variant0789f8964826ec1aca8d06da1dbefdf3266055be2aba35d9cdde56c309122683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15d49d3f43c0307708a1e9b236ef14dbd40e1ad2deef1dfd3df9506260d8521d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpace/Variant0789f8964826ec1aca8d06da1dbefdf3266055be2aba35d9cdde56c309122683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e420b50-ba92-3ca7-258d-dff17ce08bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2727–2745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_measure_Ico_atTop [SemilatticeSup α] [NoMaxOrder α]
    [(atTop : Filter α).IsCountablyGenerated] (μ : Measure α) (a : α) :
    Tendsto (fun x => μ (Ico a x)) atTop (𝓝 (μ (Ici a))) := by
  haveI : Nonempty α := ⟨a⟩
  have h_mono : Monotone fun x => μ (Ico a x) := fun i j hij =>
    measure_mono (Ico_subset_Ico_right hij)
  convert tendsto_atTop_iSup h_mono
  obtain ⟨xs, hxs_mono, hxs_tendsto⟩ := exists_seq_monotone_tendsto_atTop_atTop α
  have h_Ici : Ici a = ⋃ n, Ico a (xs n) := by
    ext1 x
    simp only [mem_Ici, mem_iUnion, mem_Ico, exists_and_left, iff_self_and]
    intro
    obtain ⟨y, hxy⟩ := NoMaxOrder.exists_gt x
    obtain ⟨n, hn⟩ := tendsto_atTop_atTop.mp hxs_tendsto y
    exact ⟨n, hxy.trans_le (hn n le_rfl)⟩
  rw [h_Ici, measure_iUnion_eq_iSup, iSup_eq_iSup_subseq_of_monotone h_mono hxs_tendsto]
  exact Monotone.directed_le fun i j hij => Ico_subset_Ico_right (hxs_mono hij)
#align measure_theory.tendsto_measure_Ico_at_top MeasureTheory.tendsto_measure_Ico_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Variant0789f8964826ec1aca8d06da1dbefdf3266055be2aba35d9cdde56c309122683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variant0789f8964826ec1aca8d06da1dbefdf3266055be2aba35d9cdde56c309122683.lean#L2727).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0588602c394b79b9ab0b5bd11ed4cb6579bbc7ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
