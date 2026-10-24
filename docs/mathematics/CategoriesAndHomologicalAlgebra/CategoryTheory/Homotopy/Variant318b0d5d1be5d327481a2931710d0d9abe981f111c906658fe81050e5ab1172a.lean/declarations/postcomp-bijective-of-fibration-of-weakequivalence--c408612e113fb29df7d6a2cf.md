# postcomp_bijective_of_fibration_of_weakEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d74451e7c922e39cb27530fcbaf3aa969016793",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fad6bfb6-4d92-5cb1-ed88-a1d9132a5105",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92eaa67b-7f0d-124f-8fbd-bdeb0fc2b27e",
  "kind": "lemma",
  "lexical_name": "postcomp_bijective_of_fibration_of_weakEquivalence",
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
  "slug": "postcomp-bijective-of-fibration-of-weakequivalence--c408612e113fb29df7d6a2cf",
  "source": {
    "blob": "1d74451e7c922e39cb27530fcbaf3aa969016793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c408612e113fb29df7d6a2cf015e396af92b1eba1860eed320460fca8512d5a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92eaa67b-7f0d-124f-8fbd-bdeb0fc2b27e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma postcomp_bijective_of_fibration_of_weakEquivalence
    [IsCofibrant X] (g : Y ⟶ Z) [Fibration g] [WeakEquivalence g] :
    Function.Bijective (fun (f : LeftHomotopyClass X Y) ↦ f.postcomp g) := by
  constructor
  · intro f₀ f₁ h
    obtain ⟨f₀, rfl⟩ := f₀.mk_surjective
    obtain ⟨f₁, rfl⟩ := f₁.mk_surjective
    simp only [postcomp_mk, mk_eq_mk_iff] at h
    obtain ⟨P, _, ⟨h⟩⟩ := h.exists_good_cylinder
    have sq : CommSq (coprod.desc f₀ f₁) P.i g h.h := { }
    rw [mk_eq_mk_iff]
    exact ⟨P,
      ⟨{h := sq.lift
        h₀ := by
          have := coprod.inl ≫= sq.fac_left
          rwa [P.inl_i_assoc, coprod.inl_desc] at this
        h₁ := by
          have := coprod.inr ≫= sq.fac_left
          rwa [P.inr_i_assoc, coprod.inr_desc] at this }⟩⟩
  · intro φ
    obtain ⟨φ, rfl⟩ := φ.mk_surjective
    have sq : CommSq (initial.to Y) (initial.to X) g φ := { }
    exact ⟨mk sq.lift, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d74451e7c922e39cb27530fcbaf3aa969016793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
