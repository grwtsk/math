# hasSeparatingCovers_iff_separatedNhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3df9d3c3-d505-fce7-80b6-902730f6aa90",
  "kind": "theorem",
  "lexical_name": "hasSeparatingCovers_iff_separatedNhds",
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
  "slug": "hasseparatingcovers-iff-separatednhds--039d450498744d255c0b6bb0",
  "source": {
    "blob": "44e6449a83e050be2f4fdbd007ae260dd51dbf42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:039d450498744d255c0b6bb036982fa80bdb81957bcbc98cdc61f434d0d471c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3df9d3c3-d505-fce7-80b6-902730f6aa90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSeparatingCovers_iff_separatedNhds {s t : Set X} :
    HasSeparatingCover s t ∧ HasSeparatingCover t s ↔ SeparatedNhds s t := by
  constructor
  · rintro ⟨⟨u, u_cov, u_props⟩, ⟨v, v_cov, v_props⟩⟩
    have open_lemma : ∀ (u₀ a : ℕ → Set X), (∀ n, IsOpen (u₀ n)) →
      IsOpen (⋃ n, u₀ n \ closure (a n)) := fun _ _ u₀i_open ↦
        isOpen_iUnion fun i ↦ (u₀i_open i).sdiff isClosed_closure
    have cover_lemma : ∀ (h₀ : Set X) (u₀ v₀ : ℕ → Set X),
        (h₀ ⊆ ⋃ n, u₀ n) → (∀ n, Disjoint (closure (v₀ n)) h₀) →
        (h₀ ⊆ ⋃ n, u₀ n \ closure (⋃ m ≤ n, v₀ m)) :=
        fun h₀ u₀ v₀ h₀_cov dis x xinh ↦ by
      rcases h₀_cov xinh with ⟨un, ⟨n, rfl⟩, xinun⟩
      simp only [mem_iUnion]
      refine ⟨n, xinun, ?_⟩
      simp_all only [closure_iUnion₂_le_nat, disjoint_right, mem_iUnion,
        exists_false, not_false_eq_true]
    refine
      ⟨⋃ n : ℕ, u n \ (closure (⋃ m ≤ n, v m)),
       ⋃ n : ℕ, v n \ (closure (⋃ m ≤ n, u m)),
       open_lemma u (fun n ↦ ⋃ m ≤ n, v m) (fun n ↦ (u_props n).1),
       open_lemma v (fun n ↦ ⋃ m ≤ n, u m) (fun n ↦ (v_props n).1),
       cover_lemma s u v u_cov (fun n ↦ (v_props n).2),
       cover_lemma t v u v_cov (fun n ↦ (u_props n).2),
       ?_⟩
    rw [Set.disjoint_left]
    rintro x ⟨un, ⟨n, rfl⟩, xinun⟩
    suffices ∀ (m : ℕ), x ∈ v m → x ∈ closure (⋃ m' ∈ {m' | m' ≤ m}, u m') by simpa
    intro m xinvm
    have n_le_m : n ≤ m := by
      by_contra m_gt_n
      exact xinun.2 (subset_closure (mem_biUnion (le_of_lt (not_le.mp m_gt_n)) xinvm))
    exact subset_closure (mem_biUnion n_le_m xinun.1)
  · rintro ⟨U, V, U_open, V_open, h_sub_U, k_sub_V, UV_dis⟩
    exact
      ⟨⟨fun _ ↦ U,
        h_sub_U.trans (iUnion_const U).symm.subset,
        fun _ ↦
          ⟨U_open, disjoint_of_subset (fun ⦃a⦄ a ↦ a) k_sub_V (UV_dis.closure_left V_open)⟩⟩,
       ⟨fun _ ↦ V,
        k_sub_V.trans (iUnion_const V).symm.subset,
        fun _ ↦
          ⟨V_open, disjoint_of_subset (fun ⦃a⦄ a ↦ a) h_sub_U (UV_dis.closure_right U_open).symm⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44e6449a83e050be2f4fdbd007ae260dd51dbf42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
