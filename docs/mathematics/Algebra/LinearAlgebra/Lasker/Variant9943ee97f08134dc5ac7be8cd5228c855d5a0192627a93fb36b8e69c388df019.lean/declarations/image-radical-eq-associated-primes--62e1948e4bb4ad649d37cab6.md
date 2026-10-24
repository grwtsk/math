# image_radical_eq_associated_primes

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
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32264b42-be65-4c19-77e4-62bec1bae3ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7eea6e0-9db4-5807-f8c7-9f50c674c99e",
  "kind": "lemma",
  "lexical_name": "image_radical_eq_associated_primes",
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
  "slug": "image-radical-eq-associated-primes--62e1948e4bb4ad649d37cab6",
  "source": {
    "blob": "5d002a86a9b8b251eb45c00496e2189164b8156a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e1948e4bb4ad649d37cab6d6c2b2dc823d7408dca3c4493c683c69d4bedb22",
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

Occurrence: `result:b7eea6e0-9db4-5807-f8c7-9f50c674c99e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_radical_eq_associated_primes
    {N : Submodule R M} {t : Finset (Submodule R M)} (ht : IsMinimalPrimaryDecomposition N t) :
    (fun J : Submodule R M ↦ (J.colon Set.univ).radical) '' t = N.associatedPrimes := by
  classical
  replace h x : radical (N.colon {x}) = (t.filter (x ∉ ·)).inf fun q ↦ radical (q.colon .univ) := by
    simp_rw [← ht.inf_eq, colon_finsetInf, ← radicalInfTopHom_apply, map_finset_inf,
      Function.comp_def, radicalInfTopHom_apply, id_eq]
    rw [Finset.inf_congr rfl (fun q hq ↦ (ht.primary hq).radical_colon_singleton_eq_ite x),
      Finset.inf_ite, Finset.inf_top, top_inf_eq]
  ext p
  constructor
  · rintro ⟨q, hqt, rfl⟩
    obtain ⟨x, hxt, hxq⟩ := SetLike.not_le_iff_exists.mp (ht.minimal hqt)
    use (ht.primary hqt).isPrime_radical_colon, x
    rw [h, ← Finset.insert_erase (Finset.mem_filter.mpr ⟨hqt, hxq⟩), Finset.inf_insert,
      eq_comm, inf_eq_left, Finset.le_inf_iff]
    simp only [mem_finsetInf, Finset.mem_erase] at hxt
    grind
  · rintro ⟨hp, x, rfl⟩
    rw [h] at hp ⊢
    obtain ⟨q, hq1, hq2⟩ := eq_inf_of_isPrime_inf hp
    exact ⟨q, Finset.mem_of_mem_filter q hq1, hq2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d002a86a9b8b251eb45c00496e2189164b8156a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
