# toAut_surjective_of_isPretransitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c84a56091c8654dd97c6d13a4139d53bf7b6bef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:420a6a77-26e5-b81c-bf6a-64baeaf3cc56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:546ec1c5-5338-4110-daef-65894ec119dc",
  "kind": "lemma",
  "lexical_name": "toAut_surjective_of_isPretransitive",
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
  "slug": "toaut-surjective-of-ispretransitive--e1e685af2022cff724db3a77",
  "source": {
    "blob": "8c84a56091c8654dd97c6d13a4139d53bf7b6bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1e685af2022cff724db3a7757a1e4fbfec705710cdf01569dd8120c7c72d3c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:546ec1c5-5338-4110-daef-65894ec119dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAut_surjective_of_isPretransitive [TopologicalSpace G] [IsTopologicalGroup G]
    [CompactSpace G] [∀ (X : C), ContinuousSMul G (F.obj X)]
    (h : ∀ (X : C) [IsGalois X], MulAction.IsPretransitive G (F.obj X)) :
    Function.Surjective (toAut F G) := by
  intro t
  choose gi hgi using (fun X : PointedGaloisObject F ↦ toAut_surjective_isGalois F G t X)
  let cl (X : PointedGaloisObject F) : Set G := gi X • MulAction.stabilizer G X.pt
  let c : Set G := ⋂ i, cl i
  have hne : c.Nonempty := by
    rw [← Set.univ_inter c]
    apply CompactSpace.isCompact_univ.inter_iInter_nonempty
    · intro X
      apply IsClosed.leftCoset
      exact Subgroup.isClosed_of_isOpen _ (stabilizer_isOpen G X.pt)
    · intro s
      rw [Set.univ_inter]
      obtain ⟨gs, hgs⟩ :=
        toAut_surjective_isGalois_finite_family F G t (fun X : s ↦ X.val.obj) h
      use gs
      simp only [Set.mem_iInter]
      intro X hXmem
      rw [mem_leftCoset_iff, SetLike.mem_coe, MulAction.mem_stabilizer_iff, mul_smul,
        hgs ⟨X, hXmem⟩, ← hgi X, inv_smul_smul]
  obtain ⟨g, hg⟩ := hne
  refine ⟨g, Iso.ext <| natTrans_ext_of_isGalois _ <| fun X _ ↦ ?_⟩
  ext x
  simp only [toAut_hom_app_apply]
  have : g ∈ (gi ⟨X, x, inferInstance⟩ • MulAction.stabilizer G x : Set G) := by
    simp only [Set.mem_iInter, c] at hg
    exact hg _
  obtain ⟨s, (hsmem : s • x = x), (rfl : gi ⟨X, x, inferInstance⟩ • s = _)⟩ := this
  rw [smul_eq_mul, mul_smul, hsmem]
  exact hgi ⟨X, x, inferInstance⟩ x

/-- If `toAut F G` is surjective, then `G` acts transitively on the fibers of connected objects.
For a converse see `toAut_surjective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c84a56091c8654dd97c6d13a4139d53bf7b6bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
