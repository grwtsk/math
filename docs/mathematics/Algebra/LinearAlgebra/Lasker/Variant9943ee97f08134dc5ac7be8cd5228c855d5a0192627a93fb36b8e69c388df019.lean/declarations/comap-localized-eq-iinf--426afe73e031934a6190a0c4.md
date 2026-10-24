# comap_localized₀_eq_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d002a86a9b8b251eb45c00496e2189164b8156a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:313b8580-522f-172a-f9e7-4149779ef178",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5242c7f8-2feb-c669-1c29-1fb45e51594a",
  "kind": "lemma",
  "lexical_name": "comap_localized₀_eq_iInf",
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
  "slug": "comap-localized-eq-iinf--426afe73e031934a6190a0c4",
  "source": {
    "blob": "5d002a86a9b8b251eb45c00496e2189164b8156a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 198,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:426afe73e031934a6190a0c4d0962c86ff415a6112b544e9e027a8925222bbf4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5242c7f8-2feb-c669-1c29-1fb45e51594a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_localized₀_eq_iInf
    {t : Finset (Submodule R M)} (ht : N.IsMinimalPrimaryDecomposition t)
    (s₀ : Finset N.associatedPrimes) (hs₀ : IsLowerSet (s₀ : Set N.associatedPrimes))
    (s : Finset (Submodule R M)) (hs : s ⊆ t)
    (hs' : (s.image fun q ↦ (q.colon Set.univ).radical) = s₀.image (↑)) :
    letI S := ⨅ q ∈ s₀, q.1.primeCompl
    letI f := mkLinearMap S M
    (N.localized₀ S f).comap f = ⨅ q ∈ s, q := by
  set S := ⨅ q ∈ s₀, q.1.primeCompl
  set f := mkLinearMap S M
  rw [← ht.inf_eq, ← localized₀FrameHom_apply, map_finset_inf, Submodule.comap_finsetInf]
  simp_rw [Function.comp_def, id_eq, localized₀FrameHom_apply]
  suffices ∀ q ∈ t, (localized₀ S f q).comap f = if q ∈ s then q else ⊤ by
    rw [Finset.inf_congr rfl this, Finset.inf_ite, Finset.inf_top, inf_top_eq,
      Finset.filter_mem_eq_inter, Finset.inter_eq_right.mpr hs, Finset.inf_eq_iInf]
  refine fun q hqt ↦ (IsMinimalPrimaryDecomposition.comap_localized₀_eq_ite s₀ hs₀ q
    (ht.primary hqt) ⟨(q.colon Set.univ).radical, ht.mem_associatedPrimes hqt⟩ rfl).trans
    (ite_cond_congr (Iff.trans ?_ (ht.injOn.mem_image_iff hs hqt)).eq)
  grind [Finset.mem_image_of_mem]

end CommRing

end Submodule.IsMinimalPrimaryDecomposition

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d002a86a9b8b251eb45c00496e2189164b8156a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
