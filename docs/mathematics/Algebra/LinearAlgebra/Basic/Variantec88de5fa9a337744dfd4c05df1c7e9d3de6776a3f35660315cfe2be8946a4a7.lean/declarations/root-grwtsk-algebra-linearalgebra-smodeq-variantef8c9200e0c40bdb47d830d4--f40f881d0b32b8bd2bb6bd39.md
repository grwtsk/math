# _root_.GRWTSK.Algebra.LinearAlgebra.SModEq.Variantef8c9200e0c40bdb47d830d4c627577c546fa577bf2fe32e34562230513147d2.Submodule.vadd_set_subset_vadd_set_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e618ea0-8ada-e9e1-b435-d31beab8e0ab",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.SModEq.Variantef8c9200e0c40bdb47d830d4c627577c546fa577bf2fe32e34562230513147d2.Submodule.vadd_set_subset_vadd_set_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-smodeq-variantef8c9200e0c40bdb47d830d4--f40f881d0b32b8bd2bb6bd39",
  "source": {
    "blob": "b2f02cca4b02992d6595f5d7fe52d7d81f31ff7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantec88de5fa9a337744dfd4c05df1c7e9d3de6776a3f35660315cfe2be8946a4a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f40f881d0b32b8bd2bb6bd39032d4e6e5175d37ab14dc4dd41fd90b1ac767cf1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantec88de5fa9a337744dfd4c05df1c7e9d3de6776a3f35660315cfe2be8946a4a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e618ea0-8ada-e9e1-b435-d31beab8e0ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.SModEq.Variantef8c9200e0c40bdb47d830d4c627577c546fa577bf2fe32e34562230513147d2.Submodule.vadd_set_subset_vadd_set_iff :
    x +ᵥ (U : Set M) ⊆ y +ᵥ (U : Set M) ↔ x ≡ y [SMOD U] := by
  rw [SModEq.sub_mem]
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rw [Set.vadd_set_subset_iff_subset_neg_vadd_set, vadd_vadd, neg_add_eq_sub] at h
    simpa [Set.mem_vadd_set_iff_neg_vadd_mem] using h U.zero_mem
  · rw [Set.vadd_set_subset_iff_subset_neg_vadd_set, vadd_vadd, neg_add_eq_sub]
    intro z hz
    simpa [Set.mem_vadd_set_iff_neg_vadd_mem] using U.add_mem h hz

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantec88de5fa9a337744dfd4c05df1c7e9d3de6776a3f35660315cfe2be8946a4a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantec88de5fa9a337744dfd4c05df1c7e9d3de6776a3f35660315cfe2be8946a4a7.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f02cca4b02992d6595f5d7fe52d7d81f31ff7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
