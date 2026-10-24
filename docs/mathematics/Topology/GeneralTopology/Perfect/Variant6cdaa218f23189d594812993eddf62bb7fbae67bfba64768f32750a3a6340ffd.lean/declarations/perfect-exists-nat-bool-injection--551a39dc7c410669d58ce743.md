# Perfect.exists_nat_bool_injection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bab9d7d1-cbe8-321f-28ff-8529cc284c62",
  "kind": "theorem",
  "lexical_name": "Perfect.exists_nat_bool_injection",
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
  "slug": "perfect-exists-nat-bool-injection--551a39dc7c410669d58ce743",
  "source": {
    "blob": "21ea4c56317fc95c0e67f9ef528e811561a833bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:551a39dc7c410669d58ce743da23e0d5242062516aa428ee5751bd2a975fa346",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bab9d7d1-cbe8-321f-28ff-8529cc284c62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Perfect.exists_nat_bool_injection
    (hC : Perfect C) (hnonempty : C.Nonempty) [CompleteSpace α] :
    ∃ f : (ℕ → Bool) → α, range f ⊆ C ∧ Continuous f ∧ Injective f := by
  obtain ⟨u, -, upos', hu⟩ := exists_seq_strictAnti_tendsto' (zero_lt_one' ℝ≥0∞)
  have upos := fun n => (upos' n).1
  let P := Subtype fun E : Set α => Perfect E ∧ E.Nonempty
  choose C0 C1 h0 h1 hdisj using
    fun {C : Set α} (hC : Perfect C) (hnonempty : C.Nonempty) {ε : ℝ≥0∞} (hε : 0 < ε) =>
    hC.small_diam_splitting hnonempty hε
  let DP : List Bool → P := fun l => by
    induction l with
    | nil => exact ⟨C, ⟨hC, hnonempty⟩⟩
    | cons a l ih =>
      cases a
      · use C0 ih.property.1 ih.property.2 (upos (l.length + 1))
        exact ⟨(h0 _ _ _).1, (h0 _ _ _).2.1⟩
      use C1 ih.property.1 ih.property.2 (upos (l.length + 1))
      exact ⟨(h1 _ _ _).1, (h1 _ _ _).2.1⟩
  let D : List Bool → Set α := fun l => (DP l).val
  have hanti : ClosureAntitone D := by
    refine Antitone.closureAntitone ?_ fun l => (DP l).property.1.closed
    intro l a
    cases a
    · exact (h0 _ _ _).2.2.1
    exact (h1 _ _ _).2.2.1
  have hdiam : VanishingDiam D := by
    intro x
    apply tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds hu
    · simp
    rw [eventually_atTop]
    refine ⟨1, fun m (hm : 1 ≤ m) => ?_⟩
    rw [Nat.one_le_iff_ne_zero] at hm
    rcases Nat.exists_eq_succ_of_ne_zero hm with ⟨n, rfl⟩
    dsimp
    cases x n
    · convert (h0 _ _ _).2.2.2
      rw [PiNat.res_length]
    convert (h1 _ _ _).2.2.2
    rw [PiNat.res_length]
  have hdisj' : CantorScheme.Disjoint D := by
    rintro l (a | a) (b | b) hab <;> try contradiction
    · exact hdisj _ _ _
    exact (hdisj _ _ _).symm
  have hdom : ∀ {x : ℕ → Bool}, x ∈ (inducedMap D).1 := fun {x} => by
    rw [hanti.map_of_vanishingDiam hdiam fun l => (DP l).property.2]
    apply mem_univ
  refine ⟨fun x => (inducedMap D).2 ⟨x, hdom⟩, ?_, ?_, ?_⟩
  · rintro y ⟨x, rfl⟩
    exact map_mem ⟨_, hdom⟩ 0
  · apply hdiam.map_continuous.comp
    fun_prop
  intro x y hxy
  simpa only [← Subtype.val_inj] using hdisj'.map_injective hxy

end CantorInjMetric

/-- Any closed uncountable subset of a Polish space admits a continuous injection
from the Cantor space `ℕ → Bool`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ea4c56317fc95c0e67f9ef528e811561a833bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
