# isClosed_iUnion_closure_singleton_of_not_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36c828fd-5c2b-e003-fe49-59371422dc0b",
  "kind": "lemma",
  "lexical_name": "isClosed_iUnion_closure_singleton_of_not_tendsto",
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
  "slug": "isclosed-iunion-closure-singleton-of-not-tendsto--b41af3c38f822035751ce334",
  "source": {
    "blob": "ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b41af3c38f822035751ce334c605a6c3739a80df0c799ec706f67415bb3fe016",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36c828fd-5c2b-e003-fe49-59371422dc0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_iUnion_closure_singleton_of_not_tendsto {x : ℕ → X} [SequentialSpace X]
    (hx : ∀ (l : X) (φ : ℕ → ℕ), StrictMono φ → ¬Tendsto (x ∘ φ) atTop (𝓝 l)) :
    IsClosed (⋃ i, closure {x i}) := by
  refine IsSeqClosed.isClosed fun y l hy hy' => ?_
  by_cases! hm : ∃ m, ∃ᶠ n in atTop, y n ∈ closure {x m}
  · obtain ⟨m, pm⟩ := hm
    exact subset_iUnion _ m (isClosed_closure.mem_of_frequently_of_tendsto pm hy')
  · have (j : ℕ) : ∃ᶠ k in atTop, ∃ n ≥ j, y n ∈ closure {x k} := by
      refine frequently_atTop.2 fun a => ?_
      have := (Filter.eventually_all_finite (by simp : (Iic a).Finite)).2 fun i hi => hm i
      simp only [mem_Iic, eventually_atTop] at this
      obtain ⟨c, hc⟩ := this
      obtain ⟨b, hb⟩ := mem_iUnion.1 (hy (c + j))
      refine ⟨b, ?_, c + j, j.le_add_left c, hb⟩
      by_contra! hab
      simp_all [hc (c + j) (c.le_add_right j) b hab.le]
    obtain ⟨φ, hφ⟩ := extraction_forall_of_frequently this
    choose ψ hψ1 hψ2 using hφ.2
    have : Tendsto ψ atTop atTop := tendsto_atTop_mono hψ1 tendsto_id
    refine (hx l φ hφ.1 (Tendsto.specializes (hy'.comp this) (fun n => ?_))).elim
    exact specializes_iff_mem_closure.2 (hψ2 n)

/-- If `x : ℕ → X` has no convergent subsequence in a T₁ sequential space, then its range is
closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
