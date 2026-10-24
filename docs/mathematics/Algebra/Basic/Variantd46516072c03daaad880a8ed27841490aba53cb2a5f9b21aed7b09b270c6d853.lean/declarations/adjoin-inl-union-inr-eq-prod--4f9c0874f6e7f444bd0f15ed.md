# adjoin_inl_union_inr_eq_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c588afa-deb6-c0ec-c874-963238ef7456",
  "kind": "theorem",
  "lexical_name": "adjoin_inl_union_inr_eq_prod",
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
  "slug": "adjoin-inl-union-inr-eq-prod--4f9c0874f6e7f444bd0f15ed",
  "source": {
    "blob": "20e3e6843bb4011eefa8c6bc52f22abc6a469e4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 55,
    "path": "GRWTSK/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f9c0874f6e7f444bd0f15ed2c78292d5f03a340aa3986e70d29cf3c46c26d4d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c588afa-deb6-c0ec-c874-963238ef7456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_inl_union_inr_eq_prod (s) (t) :
    adjoin R (LinearMap.inl R A B '' (s ∪ {1}) ∪ LinearMap.inr R A B '' (t ∪ {1})) =
      (adjoin R s).prod (adjoin R t) := by
  apply le_antisymm
  · simp only [adjoin_le_iff, Set.insert_subset_iff, Subalgebra.zero_mem, Subalgebra.one_mem,
      subset_adjoin,-- the rest comes from `squeeze_simp`
      Set.union_subset_iff,
      LinearMap.coe_inl, Set.mk_preimage_prod_right, Set.image_subset_iff, SetLike.mem_coe,
      Set.mk_preimage_prod_left, LinearMap.coe_inr, and_self_iff, Set.union_singleton,
      Subalgebra.coe_prod]
  · rintro ⟨a, b⟩ ⟨ha, hb⟩
    let P := adjoin R (LinearMap.inl R A B '' (s ∪ {1}) ∪ LinearMap.inr R A B '' (t ∪ {1}))
    have Ha : (a, (0 : B)) ∈ adjoin R (LinearMap.inl R A B '' (s ∪ {1})) :=
      mem_adjoin_of_map_mul R LinearMap.inl_map_mul ha
    have Hb : ((0 : A), b) ∈ adjoin R (LinearMap.inr R A B '' (t ∪ {1})) :=
      mem_adjoin_of_map_mul R LinearMap.inr_map_mul hb
    replace Ha : (a, (0 : B)) ∈ P := adjoin_mono Set.subset_union_left Ha
    replace Hb : ((0 : A), b) ∈ P := adjoin_mono Set.subset_union_right Hb
    simpa [P] using Subalgebra.add_mem _ Ha Hb

variable (A) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e3e6843bb4011eefa8c6bc52f22abc6a469e4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
