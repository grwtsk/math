# comap_localized₀_eq_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ac85869-c5dd-b671-b4e8-e269c48e5cb6",
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
  "slug": "comap-localized-eq-iinf--eaaec5932388a720bcd24d26",
  "source": {
    "blob": "d1b367b6f511819633bbbda18166404bcac7ac60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 206,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaaec5932388a720bcd24d26295c2ec65bbc28f26f1da4368673002334f0776b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ac85869-c5dd-b671-b4e8-e269c48e5cb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–229.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b367b6f511819633bbbda18166404bcac7ac60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
