# iInf_sets_induct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5fcc760-a807-93e0-5fe7-477429d5c60b",
  "kind": "theorem",
  "lexical_name": "iInf_sets_induct",
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
  "slug": "iinf-sets-induct--8528b1c6b2871639cce124f2",
  "source": {
    "blob": "7084d07ff0cc5bcd9188744def52f8656690516c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 342,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8528b1c6b2871639cce124f2e113dbe0ed419fa2d27d231a092df47e4ea286d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5fcc760-a807-93e0-5fe7-477429d5c60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_sets_induct {f : ι → Filter α} {s : Set α} (hs : s ∈ iInf f) {p : Set α → Prop}
    (uni : p univ) (ins : ∀ {i s₁ s₂}, s₁ ∈ f i → p s₂ → p (s₁ ∩ s₂)) : p s := by
  have p_of_f : ∀ i, ∀ s ∈ f i, p s := fun i s hs ↦ by simpa using ins hs uni
  let q : Set α → Prop := fun t ↦ t ∈ iInf f ∧ ∀ t', t ⊆ t' → p t'
  have q_mono : Monotone q := fun a b hab ha ↦
    ⟨mem_of_superset ha.1 hab, fun t hbt ↦ ha.2 _ (hab.trans hbt)⟩
  have A : ∀ i, ∀ s ∈ f i, ∀ t, q t → q (s ∩ t) := fun i s hs t ht ↦ by
    use inter_mem (mem_iInf_of_mem _ hs) ht.1
    intro u hu
    have : u = (u ∪ s) ∩ (u ∪ t) := by
      rwa [← union_eq_left, union_inter_distrib_left, eq_comm] at hu
    rw [this]
    exact ins (mem_of_superset hs subset_union_right) (ht.2 _ subset_union_right)
  have B : ∀ s t, q s → q t → q (s ∩ t) := fun s t hqs hqt ↦ by
    let 𝓕 : Filter α :=
    { sets := {s | ∀ t, q t → q (s ∩ t)}
      univ_sets := by simp
      sets_of_superset ha hab t ht := q_mono (inter_subset_inter_left _ hab) (ha t ht)
      inter_sets ha hb t ht := by simpa [inter_assoc] using ha _ (hb _ ht) }
    exact (le_iInf_iff.mpr A : 𝓕 ≤ iInf f) hqs.1 _ hqt
  have C : ∀ i, ∀ s ∈ f i, q s := fun i s hs ↦
    ⟨mem_iInf_of_mem _ hs, fun t hst ↦ p_of_f _ _ (mem_of_superset hs hst)⟩
  let 𝓖 : Filter α :=
  { sets := {t | q t}
    univ_sets := by simpa [q] using uni
    sets_of_superset ha hab :=
      ⟨mem_of_superset ha.1 hab, fun t hbt ↦ ha.2 _ (hab.trans hbt)⟩
    inter_sets := B _ _ }
  have : 𝓖 ≤ iInf f := le_iInf_iff.mpr C
  exact (this hs).2 s subset_rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7084d07ff0cc5bcd9188744def52f8656690516c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
