# lieIdeal_oper_eq_tensor_map_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74f6cd275182c7cde49e7136c7143fe5f6a42180",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b9dbe26-fce4-f014-fd3e-2fe0f78be756",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:526b922b-c904-9dfa-e4a3-2f3c41d9dd98",
  "kind": "theorem",
  "lexical_name": "lieIdeal_oper_eq_tensor_map_range",
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
  "slug": "lieideal-oper-eq-tensor-map-range--1e4c4c34fdbc9279f3801316",
  "source": {
    "blob": "74f6cd275182c7cde49e7136c7143fe5f6a42180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e4c4c34fdbc9279f38013168ee2db324dc928546a7300d6682700ca2dfbc400",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:526b922b-c904-9dfa-e4a3-2f3c41d9dd98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lieIdeal_oper_eq_tensor_map_range :
    ⁅I, N⁆ = ((toModuleHom R L M).comp (mapIncl I N : (↥I) ⊗[R] (↥N) →ₗ⁅R,L⁆ L ⊗[R] M)).range := by
  rw [← coe_toSubmodule_eq_iff, lieIdeal_oper_eq_linear_span, LieModuleHom.coeSubmodule_range,
    LieModuleHom.coe_linearMap_comp, LinearMap.range_comp, mapIncl_def, coe_linearMap_map,
    TensorProduct.map_range_eq_span_tmul, Submodule.map_span]
  congr; ext m; constructor
  · rintro ⟨⟨x, hx⟩, ⟨n, hn⟩, rfl⟩; use x ⊗ₜ n; constructor
    · use ⟨x, hx⟩, ⟨n, hn⟩; simp
    · simp
  · rintro ⟨t, ⟨⟨x, hx⟩, ⟨n, hn⟩, rfl⟩, h⟩; rw [← h]; use ⟨x, hx⟩, ⟨n, hn⟩; simp
#align lie_submodule.lie_ideal_oper_eq_tensor_map_range LieSubmodule.lieIdeal_oper_eq_tensor_map_range

end LieSubmodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74f6cd275182c7cde49e7136c7143fe5f6a42180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
