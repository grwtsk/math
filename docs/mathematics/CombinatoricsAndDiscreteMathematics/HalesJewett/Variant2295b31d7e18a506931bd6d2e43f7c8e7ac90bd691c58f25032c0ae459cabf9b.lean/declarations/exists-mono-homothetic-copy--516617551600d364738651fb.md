# exists_mono_homothetic_copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d0d5406-d3d0-5aa4-6dcc-409e46e59969",
  "kind": "theorem",
  "lexical_name": "exists_mono_homothetic_copy",
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
  "slug": "exists-mono-homothetic-copy--516617551600d364738651fb",
  "source": {
    "blob": "a9d6da96a2a19c801bb472d532b5a9e30d387bac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 349,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:516617551600d364738651fb0c1b7a67e0583d1de1eff89a5a01dfbe3c8f9f40",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d0d5406-d3d0-5aa4-6dcc-409e46e59969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mono_homothetic_copy {M κ : Type*} [AddCommMonoid M] (S : Finset M) [Finite κ]
    (C : M → κ) : ∃ a > 0, ∃ (b : M) (c : κ), ∀ s ∈ S, C (a • s + b) = c := by
  obtain ⟨ι, _inst, hι⟩ := Line.exists_mono_in_high_dimension S κ
  specialize hι fun v => C <| ∑ i, v i
  obtain ⟨l, c, hl⟩ := hι
  set s : Finset ι := Finset.univ.filter (fun i => l.idxFun i = none ) with hs
  refine'
    ⟨s.card, Finset.card_pos.mpr ⟨l.proper.choose, _⟩, ∑ i in sᶜ, ((l.idxFun i).map _).getD 0,
      c, _⟩
  · rw [hs, Finset.mem_filter]
    exact ⟨Finset.mem_univ _, l.proper.choose_spec⟩
  · exact fun m => m
  intro x xs
  rw [← hl ⟨x, xs⟩]
  clear hl; congr
  rw [← Finset.sum_add_sum_compl s]
  congr 1
  · rw [← Finset.sum_const]
    apply Finset.sum_congr rfl
    intro i hi
    rw [hs, Finset.mem_filter] at hi
    rw [l.apply_none _ _ hi.right, Subtype.coe_mk]
  · apply Finset.sum_congr rfl
    intro i hi
    rw [hs, Finset.compl_filter, Finset.mem_filter] at hi
    obtain ⟨y, hy⟩ := Option.ne_none_iff_exists.mp hi.right
    simp_rw [← hy, Option.map_some', Option.getD]
#align combinatorics.exists_mono_homothetic_copy Combinatorics.exists_mono_homothetic_copy

end Combinatorics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d6da96a2a19c801bb472d532b5a9e30d387bac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
