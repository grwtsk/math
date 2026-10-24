# realContinuousMapOfNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c35c5b5e26c07a54845f142846d27a9d42204cf462c2c5d253eadb8c9af5a69",
  "kind": "def",
  "lexical_name": "realContinuousMapOfNNReal",
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
  "slug": "realcontinuousmapofnnreal--96e5a824f72c5d0641df84d7",
  "source": {
    "blob": "308e0ac542c4dfd28e7a09452f03f1499653d46c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96e5a824f72c5d0641df84d78c8a600c043596c91a5fb51bdf67f1b925e6f605",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c35c5b5e26c07a54845f142846d27a9d42204cf462c2c5d253eadb8c9af5a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def realContinuousMapOfNNReal (φ : C(X, ℝ≥0) →⋆ₐ[ℝ≥0] A) :
    C(X, ℝ) →⋆ₐ[ℝ] A where
  toFun f := φ f.toNNReal - φ (-f).toNNReal
  map_one' := by simp
  map_zero' := by simp
  map_mul' f g := by
    have := congr(φ $(f.toNNReal_mul_add_neg_mul_add_mul_neg_eq g))
    simp only [map_add, map_mul, sub_mul, mul_sub] at this ⊢
    rw [← sub_eq_zero] at this ⊢
    convert this using 1
    abel
  map_add' f g := by
    have := congr(φ $(f.toNNReal_add_add_neg_add_neg_eq g))
    simp only [map_add] at this ⊢
    rw [← sub_eq_zero] at this ⊢
    convert this using 1
    abel
  commutes' r := by
    obtain (hr | hr) := le_total 0 r
    · lift r to ℝ≥0 using hr
      simpa only [ContinuousMap.toNNReal_algebraMap, ContinuousMap.toNNReal_neg_algebraMap,
        map_zero, sub_zero] using AlgHomClass.commutes φ r
    · rw [← neg_neg r, ← map_neg, neg_neg (-r)]
      rw [← neg_nonneg] at hr
      lift -r to ℝ≥0 using hr with r
      simpa only [map_neg, ContinuousMap.toNNReal_neg_algebraMap, map_zero,
        ContinuousMap.toNNReal_algebraMap, zero_sub, neg_inj] using AlgHomClass.commutes φ r
  map_star' f := by simp only [star_trivial, star_sub, ← map_star]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308e0ac542c4dfd28e7a09452f03f1499653d46c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
