# prod_map_lt_prod_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d87a5a1-e9cd-c0e7-d4d1-ada86c9ee790",
  "kind": "theorem",
  "lexical_name": "prod_map_lt_prod_map",
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
  "slug": "prod-map-lt-prod-map--16cf3f6af4959528ca814eb8",
  "source": {
    "blob": "ede3d5a3ae813d5f11380e8a60017ab3907b01cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 86,
    "path": "GRWTSK/Algebra/List/Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16cf3f6af4959528ca814eb82295c35b9880f6a78a4316fbba0cbaf6fd8f7708",
  "verification": {
    "reference": "docs/verification/Algebra/List/Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d87a5a1-e9cd-c0e7-d4d1-ada86c9ee790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_map_lt_prod_map {ι : Type*} {s : List ι} (hs : s ≠ [])
    (f : ι → R) (g : ι → R) (h0 : ∀ i ∈ s, 0 < f i) (h : ∀ i ∈ s, f i < g i) :
    (map f s).prod < (map g s).prod := by
  match s with
  | [] => contradiction
  | a :: s =>
    simp only [map_cons, prod_cons]
    have := posMulStrictMono_iff_mulPosStrictMono.1 ‹PosMulStrictMono R›
    apply mul_lt_mul
    · apply h
      simp
    · apply prod_map_le_prod_map₀
      · intro i hi
        apply le_of_lt
        apply h0
        simp [hi]
      · intro i hi
        apply le_of_lt
        apply h
        simp [hi]
    · apply prod_pos
      simp only [mem_map, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
      intro a ha
      apply h0
      simp [ha]
    · apply le_of_lt ((h0 _ _).trans (h _ _)) <;> simp

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/List/Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/List/Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede3d5a3ae813d5f11380e8a60017ab3907b01cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
