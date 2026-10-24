# measurableSet_of_mem_nhdsWithin_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0589e0be-8fd2-5865-38ab-508379ee36aa",
  "kind": "theorem",
  "lexical_name": "measurableSet_of_mem_nhdsWithin_Ioi",
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
  "slug": "measurableset-of-mem-nhdswithin-ioi--8ac1cf594e7cbe23f7b4efb9",
  "source": {
    "blob": "bf7761044a2eca410d520e2d468bbdb6aa480c7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1308,
    "line": 1287,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ac1cf594e7cbe23f7b4efb9daf4487e9733c6c6a379212c75c89ecf5d254945",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0589e0be-8fd2-5865-38ab-508379ee36aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1287–1308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_of_mem_nhdsWithin_Ioi {s : Set α} (h : ∀ x ∈ s, s ∈ 𝓝[>] x) :
    MeasurableSet s := by
  by_cases H : ∃ x ∈ s, IsTop x
  · rcases H with ⟨x₀, x₀s, h₀⟩
    have : s = {x₀} ∪ s \ {x₀} := by rw [union_diff_cancel (singleton_subset_iff.2 x₀s)]
    rw [this]
    refine' (measurableSet_singleton _).union _
    have A : ∀ x ∈ s \ {x₀}, x < x₀ := fun x hx => lt_of_le_of_ne (h₀ _) (by simpa using hx.2)
    refine' measurableSet_of_mem_nhdsWithin_Ioi_aux (fun x hx => _) fun x hx => ⟨x₀, A x hx⟩
    obtain ⟨u, hu, us⟩ : ∃ (u : α), u ∈ Ioi x ∧ Ioo x u ⊆ s :=
      (mem_nhdsWithin_Ioi_iff_exists_Ioo_subset' (A x hx)).1 (h x hx.1)
    refine' (mem_nhdsWithin_Ioi_iff_exists_Ioo_subset' (A x hx)).2 ⟨u, hu, fun y hy => ⟨us hy, _⟩⟩
    exact ne_of_lt (hy.2.trans_le (h₀ _))
  · apply measurableSet_of_mem_nhdsWithin_Ioi_aux h
    simp only [IsTop] at H
    push_neg at H
    exact H
#align measurable_set_of_mem_nhds_within_Ioi measurableSet_of_mem_nhdsWithin_Ioi

end LinearOrder

@[measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean#L1287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7761044a2eca410d520e2d468bbdb6aa480c7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
