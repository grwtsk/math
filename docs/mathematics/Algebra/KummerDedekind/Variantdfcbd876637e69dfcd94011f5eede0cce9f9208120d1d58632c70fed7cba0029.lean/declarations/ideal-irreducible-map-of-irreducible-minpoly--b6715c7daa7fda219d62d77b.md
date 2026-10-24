# Ideal.irreducible_map_of_irreducible_minpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b4a5a2bc169271918ea64d64998dffcff659417",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:237af7b0-84ee-6c7a-e904-d5d3158829c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c43eef43-b0bb-26db-7e8c-a01eb8f6ecaf",
  "kind": "theorem",
  "lexical_name": "Ideal.irreducible_map_of_irreducible_minpoly",
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
  "slug": "ideal-irreducible-map-of-irreducible-minpoly--b6715c7daa7fda219d62d77b",
  "source": {
    "blob": "7b4a5a2bc169271918ea64d64998dffcff659417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 310,
    "path": "GRWTSK/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6715c7daa7fda219d62d77bd01a60406baf32ef11d33619c9293c6138359fc3",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c43eef43-b0bb-26db-7e8c-a01eb8f6ecaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.irreducible_map_of_irreducible_minpoly (hI : IsMaximal I) (hI' : I ≠ ⊥)
    (hx : (conductor R x).comap (algebraMap R S) ⊔ I = ⊤) (hx' : IsIntegral R x)
    (hf : Irreducible (Polynomial.map (Ideal.Quotient.mk I) (minpoly R x))) :
    Irreducible (I.map (algebraMap R S)) := by
  have mem_norm_factors : normalize (Polynomial.map (Ideal.Quotient.mk I) (minpoly R x)) ∈
      normalizedFactors (Polynomial.map (Ideal.Quotient.mk I) (minpoly R x)) :=
    by simp [normalizedFactors_irreducible hf]
  suffices ∃ y, normalizedFactors (I.map (algebraMap R S)) = {y} by
    obtain ⟨y, hy⟩ := this
    have h := normalizedFactors_prod (show I.map (algebraMap R S) ≠ 0 by
          rwa [← bot_eq_zero, Ne.def,
            map_eq_bot_iff_of_injective (NoZeroSMulDivisors.algebraMap_injective R S)])
    rw [associated_iff_eq, hy, Multiset.prod_singleton] at h
    rw [← h]
    exact
      irreducible_of_normalized_factor y
        (show y ∈ normalizedFactors (I.map (algebraMap R S)) by simp [hy])
  rw [normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map hI hI' hx hx']
  use ((normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx').symm
        ⟨normalize (Polynomial.map (Ideal.Quotient.mk I) (minpoly R x)), mem_norm_factors⟩ :
      Ideal S)
  rw [Multiset.map_eq_singleton]
  use ⟨normalize (Polynomial.map (Ideal.Quotient.mk I) (minpoly R x)), mem_norm_factors⟩
  refine ⟨?_, rfl⟩
  apply Multiset.map_injective Subtype.coe_injective
  rw [Multiset.attach_map_val, Multiset.map_singleton, Subtype.coe_mk]
  exact normalizedFactors_irreducible hf
#align kummer_dedekind.ideal.irreducible_map_of_irreducible_minpoly KummerDedekind.Ideal.irreducible_map_of_irreducible_minpoly

end KummerDedekind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b4a5a2bc169271918ea64d64998dffcff659417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
