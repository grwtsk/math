# product_self_eq_disjiUnion_perm_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a46c6df3-fc8b-0cf3-9787-a0ff4e0f30d2",
  "kind": "theorem",
  "lexical_name": "product_self_eq_disjiUnion_perm_aux",
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
  "slug": "product-self-eq-disjiunion-perm-aux--1e0cb82c0eaf43143d2a60af",
  "source": {
    "blob": "33a0a177dacc514f42e4d5742e070ec7c0806fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 931,
    "line": 905,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e0cb82c0eaf43143d2a60af7a2b4c3e0d47f2aadb319d71d0835f1ebeab3d22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a46c6df3-fc8b-0cf3-9787-a0ff4e0f30d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 905–931.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem product_self_eq_disjiUnion_perm_aux (hf : f.IsCycleOn s) :
    (range #s : Set ℕ).PairwiseDisjoint fun k =>
      s.map ⟨fun i => (i, (f ^ k) i), fun _ _ => congr_arg Prod.fst⟩ := by
  obtain hs | _ := (s : Set α).subsingleton_or_nontrivial
  · refine Set.Subsingleton.pairwise ?_ _
    simp_rw [Set.Subsingleton, mem_coe, ← card_le_one] at hs ⊢
    rwa [card_range]
  classical
    rintro m hm n hn hmn
    simp only [disjoint_left, Function.onFun, mem_map, Function.Embedding.coeFn_mk,
      not_exists, not_and, forall_exists_index, and_imp, Prod.forall, Prod.mk_inj]
    rintro _ _ _ - rfl rfl a ha rfl h
    rw [hf.pow_apply_eq_pow_apply ha] at h
    rw [mem_coe, mem_range] at hm hn
    exact hmn.symm (h.eq_of_lt_of_lt hn hm)

/-- We can partition the square `s ×ˢ s` into shifted diagonals as such:
```
01234
40123
34012
23401
12340
```

The diagonals are given by the cycle `f`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean#L905).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a0a177dacc514f42e4d5742e070ec7c0806fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
