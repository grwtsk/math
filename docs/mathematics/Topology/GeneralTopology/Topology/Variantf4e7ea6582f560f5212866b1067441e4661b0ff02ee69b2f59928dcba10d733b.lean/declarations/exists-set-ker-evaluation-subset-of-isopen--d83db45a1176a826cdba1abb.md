# exists_set_ker_evaluation_subset_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fec16f2-6bf0-6e55-3d92-95cf67394a50",
  "kind": "lemma",
  "lexical_name": "exists_set_ker_evaluation_subset_of_isOpen",
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
  "slug": "exists-set-ker-evaluation-subset-of-isopen--d83db45a1176a826cdba1abb",
  "source": {
    "blob": "38c24f4c7a4f786b2b59494d1f694ce0a06a022c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf4e7ea6582f560f5212866b1067441e4661b0ff02ee69b2f59928dcba10d733b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d83db45a1176a826cdba1abb69456e3491e1f1e5c23abb4fff2ddcc562eb47aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf4e7ea6582f560f5212866b1067441e4661b0ff02ee69b2f59928dcba10d733b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fec16f2-6bf0-6e55-3d92-95cf67394a50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_set_ker_evaluation_subset_of_isOpen
    {H : Set (Aut F)} (h1 : 1 ∈ H) (h : IsOpen H) :
    ∃ (I : Set C) (_ : Fintype I), (∀ X ∈ I, IsConnected X) ∧
      (∀ σ : Aut F, (∀ X : I, σ.hom.app X = 𝟙 (F.obj X)) → σ ∈ H) := by
  obtain ⟨U, hUopen, rfl⟩ := isOpen_induced_iff.mp h
  obtain ⟨I, u, ho, ha⟩ := isOpen_pi_iff.mp hUopen 1 h1
  choose fι ff fc h4 h5 h6 using (fun X : I => has_decomp_connected_components X.val)
  refine ⟨⋃ X, Set.range (ff X), Fintype.ofFinite _, ?_, ?_⟩
  · rintro X ⟨A, ⟨Y, rfl⟩, hA2⟩
    obtain ⟨i, rfl⟩ := hA2
    exact h5 Y i
  · refine fun σ h ↦ ha (fun X XinI ↦ ?_)
    suffices h : autEmbedding F σ X = 1 by
      rw [h]
      exact (ho X XinI).right
    have h : σ.hom.app X = 𝟙 (F.obj X) := by
      have : Fintype (fι ⟨X, XinI⟩) := Fintype.ofFinite _
      ext x
      obtain ⟨⟨j⟩, a, ha : F.map _ a = x⟩ := Limits.FintypeCat.jointly_surjective
        (Discrete.functor (ff ⟨X, XinI⟩) ⋙ F) _ (Limits.isColimitOfPreserves F (h4 ⟨X, XinI⟩)) x
      rw [FintypeCat.id_apply, ← ha, NatTrans.naturality_apply]
      simp [h ⟨(ff _) j, ⟨Set.range (ff ⟨X, XinI⟩), ⟨⟨_, rfl⟩, ⟨j, rfl⟩⟩⟩⟩]
    exact Iso.ext h

open Limits

/-- The stabilizers of points in the fibers of Galois objects form a neighbourhood basis
of the identity in `Aut F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf4e7ea6582f560f5212866b1067441e4661b0ff02ee69b2f59928dcba10d733b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf4e7ea6582f560f5212866b1067441e4661b0ff02ee69b2f59928dcba10d733b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c24f4c7a4f786b2b59494d1f694ce0a06a022c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
