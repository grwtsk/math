# finite_of_isPwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b33e0bc1-9216-152d-185f-13163066fdf5",
  "kind": "theorem",
  "lexical_name": "finite_of_isPwo",
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
  "slug": "finite-of-ispwo--9a4dea83b7c6f22721062f69",
  "source": {
    "blob": "2d1fd0019d4599b7117bf0cfdb21a9051b0c6fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a4dea83b7c6f22721062f69143e93f00835a5f7fba24b8b4de9b50c1c0ea498",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b33e0bc1-9216-152d-185f-13163066fdf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_isPwo (hs : s.IsPwo) (ht : t.IsPwo) (a) : (mulAntidiagonal s t a).Finite := by
  refine' not_infinite.1 fun h => _
  have h1 : (mulAntidiagonal s t a).PartiallyWellOrderedOn (Prod.fst ⁻¹'o (· ≤ ·)) := fun f hf =>
    hs (Prod.fst ∘ f) fun n => (mem_mulAntidiagonal.1 (hf n)).1
  have h2 : (mulAntidiagonal s t a).PartiallyWellOrderedOn (Prod.snd ⁻¹'o (· ≤ ·)) := fun f hf =>
    ht (Prod.snd ∘ f) fun n => (mem_mulAntidiagonal.1 (hf n)).2.1
  obtain ⟨g, hg⟩ :=
    h1.exists_monotone_subseq (fun n => h.natEmbedding _ n) fun n => (h.natEmbedding _ n).2
  obtain ⟨m, n, mn, h2'⟩ := h2 (fun x => (h.natEmbedding _) (g x)) fun n => (h.natEmbedding _ _).2
  refine' mn.ne (g.injective <| (h.natEmbedding _).injective _)
  exact eq_of_fst_le_fst_of_snd_le_snd _ _ _ (hg _ _ mn.le) h2'
#align set.mul_antidiagonal.finite_of_is_pwo Set.MulAntidiagonal.finite_of_isPwo
#align set.add_antidiagonal.finite_of_is_pwo Set.AddAntidiagonal.finite_of_isPwo

end OrderedCancelCommMonoid

@[to_additive Set.AddAntidiagonal.finite_of_isWf]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1fd0019d4599b7117bf0cfdb21a9051b0c6fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
