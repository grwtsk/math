# isSplittingField_AdjoinRoot_X_pow_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26b43933-123c-7787-3b32-0bdd4f5fc638",
  "kind": "lemma",
  "lexical_name": "isSplittingField_AdjoinRoot_X_pow_sub_C",
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
  "slug": "issplittingfield-adjoinroot-x-pow-sub-c--f7e9d1a01903dd67164c9a80",
  "source": {
    "blob": "07592dedf37f522f08eb23616e34353dfaa93528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 305,
    "path": "GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7e9d1a01903dd67164c9a800f692f3c2e3c53a72c2f67a5e0ee2b142370fab3",
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

Occurrence: `result:26b43933-123c-7787-3b32-0bdd4f5fc638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSplittingField_AdjoinRoot_X_pow_sub_C :
    haveI := Fact.mk H
    letI : Algebra K K[n√a] := inferInstance
    IsSplittingField K K[n√a] (X ^ n - C a) := by
  have := Fact.mk H
  letI : Algebra K K[n√a] := inferInstance
  constructor
  · rw [← splits_id_iff_splits, Polynomial.map_sub, Polynomial.map_pow, Polynomial.map_C,
      Polynomial.map_X]
    have ⟨_, hζ⟩ := hζ
    rw [mem_primitiveRoots (Nat.pos_of_ne_zero <| ne_zero_of_irreducible_X_pow_sub_C H)] at hζ
    exact X_pow_sub_C_splits_of_isPrimitiveRoot (hζ.map_of_injective (algebraMap K _).injective)
      (root_X_pow_sub_C_pow n a)
  · rw [eq_top_iff, ← AdjoinRoot.adjoinRoot_eq_top]
    apply Algebra.adjoin_mono
    have := ne_zero_of_irreducible_X_pow_sub_C H
    rw [Set.singleton_subset_iff, mem_rootSet_of_ne (X_pow_sub_C_ne_zero
      (Nat.pos_of_ne_zero this) a), aeval_def, AdjoinRoot.algebraMap_eq, AdjoinRoot.eval₂_root]

variable {α : L} (hα : α ^ n = algebraMap K L a)

/-- Suppose `L/K` is the splitting field of `Xⁿ - a`, then a choice of `ⁿ√a` gives an equivalence of
`L` with `K[n√a]`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07592dedf37f522f08eb23616e34353dfaa93528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
