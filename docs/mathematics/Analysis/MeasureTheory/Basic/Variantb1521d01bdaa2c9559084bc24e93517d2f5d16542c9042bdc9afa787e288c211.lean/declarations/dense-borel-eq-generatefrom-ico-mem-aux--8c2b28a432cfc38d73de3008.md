# Dense.borel_eq_generateFrom_Ico_mem_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2095417a1394f77dd8b7a70a5fdc925d93c9fcd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 650,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:faeab3b7-3b9c-f71d-56a8-6de417fc4795",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb001b4a-dde8-47bd-b8ee-44def9f8c6f7",
  "kind": "theorem",
  "lexical_name": "Dense.borel_eq_generateFrom_Ico_mem_aux",
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
  "slug": "dense-borel-eq-generatefrom-ico-mem-aux--8c2b28a432cfc38d73de3008",
  "source": {
    "blob": "2095417a1394f77dd8b7a70a5fdc925d93c9fcd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 650,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c2b28a432cfc38d73de30081dcb5c5876283b45bdf98c75c53507166709580b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb001b4a-dde8-47bd-b8ee-44def9f8c6f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.borel_eq_generateFrom_Ico_mem_aux {α : Type*} [TopologicalSpace α] [LinearOrder α]
    [OrderTopology α] [SecondCountableTopology α] {s : Set α} (hd : Dense s)
    (hbot : ∀ x, IsBot x → x ∈ s) (hIoo : ∀ x y : α, x < y → Ioo x y = ∅ → y ∈ s) :
    borel α = .generateFrom { S : Set α | ∃ l ∈ s, ∃ u ∈ s, l < u ∧ Ico l u = S } := by
  set S : Set (Set α) := { S | ∃ l ∈ s, ∃ u ∈ s, l < u ∧ Ico l u = S }
  refine' le_antisymm _ (generateFrom_Ico_mem_le_borel _ _)
  letI : MeasurableSpace α := generateFrom S
  rw [borel_eq_generateFrom_Iio]
  refine' generateFrom_le (forall_range_iff.2 fun a => _)
  rcases hd.exists_countable_dense_subset_bot_top with ⟨t, hts, hc, htd, htb, -⟩
  by_cases ha : ∀ b < a, (Ioo b a).Nonempty
  · convert_to MeasurableSet (⋃ (l ∈ t) (u ∈ t) (_ : l < u) (_ : u ≤ a), Ico l u)
    · ext y
      simp only [mem_iUnion, mem_Iio, mem_Ico]
      constructor
      · intro hy
        rcases htd.exists_le' (fun b hb => htb _ hb (hbot b hb)) y with ⟨l, hlt, hly⟩
        rcases htd.exists_mem_open isOpen_Ioo (ha y hy) with ⟨u, hut, hyu, hua⟩
        exact ⟨l, hlt, u, hut, hly.trans_lt hyu, hua.le, hly, hyu⟩
      · rintro ⟨l, -, u, -, -, hua, -, hyu⟩
        exact hyu.trans_le hua
    · refine' MeasurableSet.biUnion hc fun a ha => MeasurableSet.biUnion hc fun b hb => _
      refine' MeasurableSet.iUnion fun hab => MeasurableSet.iUnion fun _ => _
      exact .basic _ ⟨a, hts ha, b, hts hb, hab, mem_singleton _⟩
  · simp only [not_forall, not_nonempty_iff_eq_empty] at ha
    replace ha : a ∈ s := hIoo ha.choose a ha.choose_spec.fst ha.choose_spec.snd
    convert_to MeasurableSet (⋃ (l ∈ t) (_ : l < a), Ico l a)
    · symm
      simp only [← Ici_inter_Iio, ← iUnion_inter, inter_eq_right_iff_subset, subset_def, mem_iUnion,
        mem_Ici, mem_Iio]
      intro x hx
      rcases htd.exists_le' (fun b hb => htb _ hb (hbot b hb)) x with ⟨z, hzt, hzx⟩
      exact ⟨z, hzt, hzx.trans_lt hx, hzx⟩
    · refine' .biUnion hc fun x hx => MeasurableSet.iUnion fun hlt => _
      exact .basic _ ⟨x, hts hx, a, ha, hlt, mem_singleton _⟩
#align dense.borel_eq_generate_from_Ico_mem_aux Dense.borel_eq_generateFrom_Ico_mem_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2095417a1394f77dd8b7a70a5fdc925d93c9fcd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
