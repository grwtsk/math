# antidiagonal_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3cc6f813d245a45c884b19d2dd56e3239e7df0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de5c5fc7-7090-847d-cbe4-b4ff784e7148",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2796ab68-93e1-39fd-01e3-4911ded0c717",
  "kind": "theorem",
  "lexical_name": "antidiagonal_single",
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
  "slug": "antidiagonal-single--8f71d85297a3afda93f4b5b2",
  "source": {
    "blob": "d3cc6f813d245a45c884b19d2dd56e3239e7df0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f71d85297a3afda93f4b5b24048a1cd59fc0b786d83c9d2baaa3c1e0354d12b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2796ab68-93e1-39fd-01e3-4911ded0c717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antidiagonal_single (a : α) (n : ℕ) :
    antidiagonal (single a n) = (antidiagonal n).map
      (Function.Embedding.prodMap ⟨_, single_injective a⟩ ⟨_, single_injective a⟩) := by
  ext ⟨x, y⟩
  simp only [mem_antidiagonal, mem_map, mem_antidiagonal, Function.Embedding.coe_prodMap,
    Function.Embedding.coeFn_mk, Prod.map_apply, Prod.mk.injEq, Prod.exists]
  constructor
  · intro h
    refine ⟨x a, y a, DFunLike.congr_fun h a |>.trans single_eq_same, ?_⟩
    simp_rw [DFunLike.ext_iff, ← forall_and]
    intro i
    replace h := DFunLike.congr_fun h i
    simp_rw [single_apply, Finsupp.add_apply] at h ⊢
    obtain rfl | hai := Decidable.eq_or_ne a i
    · exact ⟨if_pos rfl, if_pos rfl⟩
    · simp_rw [if_neg hai, add_eq_zero] at h ⊢
      exact h.imp Eq.symm Eq.symm
  · rintro ⟨a, b, rfl, rfl, rfl⟩
    exact (single_add _ _ _).symm

end Finsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3cc6f813d245a45c884b19d2dd56e3239e7df0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
