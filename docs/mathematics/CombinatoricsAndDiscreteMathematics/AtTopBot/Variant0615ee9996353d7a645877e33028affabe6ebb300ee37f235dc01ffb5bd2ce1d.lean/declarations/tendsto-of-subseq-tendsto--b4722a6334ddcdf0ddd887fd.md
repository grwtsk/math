# tendsto_of_subseq_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3756f40b-2d17-e25e-92e7-a6e1cc03dc86",
  "kind": "theorem",
  "lexical_name": "tendsto_of_subseq_tendsto",
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
  "slug": "tendsto-of-subseq-tendsto--b4722a6334ddcdf0ddd887fd",
  "source": {
    "blob": "7f615d8a1455f8dcca79ade0cd848c1c560026c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2013,
    "line": 1992,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4722a6334ddcdf0ddd887fddbef8a02bfdee48b700d639460985499298b133d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3756f40b-2d17-e25e-92e7-a6e1cc03dc86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1992–2013.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_subseq_tendsto {α ι : Type*} {x : ι → α} {f : Filter α} {l : Filter ι}
    [l.IsCountablyGenerated]
    (hxy :
      ∀ ns : ℕ → ι, Tendsto ns atTop l → ∃ ms : ℕ → ℕ, Tendsto (fun n => x (ns <| ms n)) atTop f) :
    Tendsto x l f := by
  by_contra h
  obtain ⟨s, hs, hfreq⟩ : ∃ s ∈ f, ∃ᶠ n in l, x n ∉ s := by
    rwa [not_tendsto_iff_exists_frequently_nmem] at h
  obtain ⟨y, hy_tendsto, hy_freq⟩ := exists_seq_forall_of_frequently hfreq
  specialize hxy y hy_tendsto
  obtain ⟨ms, hms_tendsto⟩ := hxy
  specialize hms_tendsto hs
  rw [mem_map] at hms_tendsto
  have hms_freq : ∀ n : ℕ, x (y (ms n)) ∉ s := fun n => hy_freq (ms n)
  have h_empty : (fun n : ℕ => x (y (ms n))) ⁻¹' s = ∅ := by
    ext1 n
    simp only [Set.mem_preimage, Set.mem_empty_iff_false, iff_false_iff]
    exact hms_freq n
  rw [h_empty] at hms_tendsto
  exact empty_not_mem atTop hms_tendsto
#align filter.tendsto_of_subseq_tendsto Filter.tendsto_of_subseq_tendsto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean#L1992).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f615d8a1455f8dcca79ade0cd848c1c560026c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
