# Polynomial.separable_X_pow_sub_C_of_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91c3b8660f316cc860b3d749068a787b60e747f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a48b22fe-5f79-d848-3322-20abb5911b38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:815a9604-e573-0c35-a775-8bc05fe2c878",
  "kind": "theorem",
  "lexical_name": "Polynomial.separable_X_pow_sub_C_of_irreducible",
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
  "slug": "polynomial-separable-x-pow-sub-c-of-irreducible--d399109cb2b0b2ac311b3866",
  "source": {
    "blob": "91c3b8660f316cc860b3d749068a787b60e747f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 189,
    "path": "GRWTSK/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d399109cb2b0b2ac311b38660a094c8147467f0d32951674836e56b9dbd97fa0",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:815a9604-e573-0c35-a775-8bc05fe2c878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.separable_X_pow_sub_C_of_irreducible : (X ^ n - C a).Separable := by
  let := Fact.mk H
  let : Algebra K K[n√a] := inferInstance
  have hn := Nat.pos_iff_ne_zero.mpr (ne_zero_of_irreducible_X_pow_sub_C H)
  by_cases hn' : n = 1
  · rw [hn', pow_one]; exact separable_X_sub_C
  have ⟨ζ, hζ⟩ := hζ
  rw [mem_primitiveRoots (Nat.pos_of_ne_zero <| ne_zero_of_irreducible_X_pow_sub_C H)] at hζ
  rw [← separable_map (algebraMap K K[n√a]), Polynomial.map_sub, Polynomial.map_pow, map_C, map_X,
    AdjoinRoot.algebraMap_eq,
    X_pow_sub_C_eq_prod (hζ.map_of_injective (algebraMap K _).injective) hn
    (root_X_pow_sub_C_pow n a), separable_prod_X_sub_C_iff']
  exact (hζ.map_of_injective (algebraMap K K[n√a]).injective).injOn_pow_mul
    (root_X_pow_sub_C_ne_zero (lt_of_le_of_ne (show 1 ≤ n from hn) (Ne.symm hn')) _)

variable (n)

/-- The natural embedding of the roots of unity of `K` into `Gal(K[ⁿ√a]/K)`, by sending
`η ↦ (ⁿ√a ↦ η • ⁿ√a)`. Also see `autAdjoinRootXPowSubC` for the `AlgEquiv` version. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c3b8660f316cc860b3d749068a787b60e747f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
