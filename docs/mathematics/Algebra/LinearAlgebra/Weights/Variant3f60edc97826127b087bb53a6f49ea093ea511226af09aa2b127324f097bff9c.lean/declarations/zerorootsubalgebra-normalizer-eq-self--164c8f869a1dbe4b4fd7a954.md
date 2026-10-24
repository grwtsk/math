# zeroRootSubalgebra_normalizer_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6122bede893542c7e45486e2105864243847b480",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bd257bd-501f-d45f-2ed9-14371bfea90c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7063f06-4e39-d4c3-ac6c-251aa5f8def5",
  "kind": "theorem",
  "lexical_name": "zeroRootSubalgebra_normalizer_eq_self",
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
  "slug": "zerorootsubalgebra-normalizer-eq-self--164c8f869a1dbe4b4fd7a954",
  "source": {
    "blob": "6122bede893542c7e45486e2105864243847b480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 445,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:164c8f869a1dbe4b4fd7a9548e752900156f50c6b6330560a2fd4a31e8c0a64f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7063f06-4e39-d4c3-ac6c-251aa5f8def5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroRootSubalgebra_normalizer_eq_self :
    (zeroRootSubalgebra R L H).normalizer = zeroRootSubalgebra R L H := by
  refine' le_antisymm _ (LieSubalgebra.le_normalizer _)
  intro x hx
  rw [LieSubalgebra.mem_normalizer_iff] at hx
  rw [mem_zeroRootSubalgebra]
  rintro ⟨y, hy⟩
  specialize hx y (le_zeroRootSubalgebra R L H hy)
  rw [mem_zeroRootSubalgebra] at hx
  obtain ⟨k, hk⟩ := hx ⟨y, hy⟩
  rw [← lie_skew, LinearMap.map_neg, neg_eq_zero] at hk
  use k + 1
  rw [LinearMap.iterate_succ, LinearMap.coe_comp, Function.comp_apply, toEndomorphism_apply_apply,
    LieSubalgebra.coe_bracket_of_module, Submodule.coe_mk, hk]
#align lie_algebra.zero_root_subalgebra_normalizer_eq_self LieAlgebra.zeroRootSubalgebra_normalizer_eq_self

/-- If the zero root subalgebra of a nilpotent Lie subalgebra `H` is just `H` then `H` is a Cartan
subalgebra.

When `L` is Noetherian, it follows from Engel's theorem that the converse holds. See
`LieAlgebra.zeroRootSubalgebra_eq_iff_is_cartan` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6122bede893542c7e45486e2105864243847b480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
