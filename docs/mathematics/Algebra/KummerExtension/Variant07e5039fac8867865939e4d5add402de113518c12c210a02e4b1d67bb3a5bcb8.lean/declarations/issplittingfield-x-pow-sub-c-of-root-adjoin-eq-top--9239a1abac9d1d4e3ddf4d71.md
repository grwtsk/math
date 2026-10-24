# isSplittingField_X_pow_sub_C_of_root_adjoin_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3286f1be-7823-b1b4-c4a4-b55cb42261c0",
  "kind": "lemma",
  "lexical_name": "isSplittingField_X_pow_sub_C_of_root_adjoin_eq_top",
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
  "slug": "issplittingfield-x-pow-sub-c-of-root-adjoin-eq-top--9239a1abac9d1d4e3ddf4d71",
  "source": {
    "blob": "07592dedf37f522f08eb23616e34353dfaa93528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 524,
    "path": "GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9239a1abac9d1d4e3ddf4d711502c71236ac642397850b400764795167ed408c",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3286f1be-7823-b1b4-c4a4-b55cb42261c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSplittingField_X_pow_sub_C_of_root_adjoin_eq_top
    {a : K} {α : L} (ha : α ^ (finrank K L) = algebraMap K L a) (hα : K⟮α⟯ = ⊤) :
    IsSplittingField K L (X ^ (finrank K L) - C a) := by
  constructor
  · rw [← splits_id_iff_splits, Polynomial.map_sub, Polynomial.map_pow, Polynomial.map_C,
      Polynomial.map_X]
    have ⟨_, hζ⟩ := hK
    rw [mem_primitiveRoots finrank_pos] at hζ
    exact X_pow_sub_C_splits_of_isPrimitiveRoot (hζ.map_of_injective (algebraMap K _).injective) ha
  · rw [eq_top_iff, ← IntermediateField.top_toSubalgebra, ← hα,
      IntermediateField.adjoin_simple_toSubalgebra_of_integral (IsIntegral.of_finite K α)]
    apply Algebra.adjoin_mono
    rw [Set.singleton_subset_iff, mem_rootSet_of_ne (X_pow_sub_C_ne_zero finrank_pos a),
      aeval_def, eval₂_sub, eval₂_X_pow, eval₂_C, ha, sub_self]

end IsCyclic

open Module in
/--
Suppose `L/K` is a finite extension of dimension `n`, and `K` contains all `n`-th roots of unity.
Then `L/K` is cyclic iff
`L` is a splitting field of some irreducible polynomial of the form `Xⁿ - a : K[X]` iff
`L = K[α]` for some `αⁿ ∈ K`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07592dedf37f522f08eb23616e34353dfaa93528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
