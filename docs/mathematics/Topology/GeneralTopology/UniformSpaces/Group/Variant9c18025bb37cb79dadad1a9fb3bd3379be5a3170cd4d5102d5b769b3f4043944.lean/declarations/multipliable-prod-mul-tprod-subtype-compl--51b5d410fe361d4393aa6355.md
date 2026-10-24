# Multipliable.prod_mul_tprod_subtype_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "997b679f9c2f7f50facdd803466fed05c1558b13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ffe923c-0945-761f-7acb-b417a89861e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0256713-f265-c362-e32c-0dd985e744d8",
  "kind": "theorem",
  "lexical_name": "Multipliable.prod_mul_tprod_subtype_compl",
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
  "slug": "multipliable-prod-mul-tprod-subtype-compl--51b5d410fe361d4393aa6355",
  "source": {
    "blob": "997b679f9c2f7f50facdd803466fed05c1558b13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 330,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51b5d410fe361d4393aa6355323c1c57921070dc975ce865b602111c1fe9f517",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0256713-f265-c362-e32c-0dd985e744d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.prod_mul_tprod_subtype_compl [T2Space α] {f : β → α}
    (hf : Multipliable f) (s : Finset β) :
    (∏ x ∈ s, f x) * ∏' x : { x // x ∉ s }, f x = ∏' x, f x := by
  rw [← hf.tprod_subtype_mul_tprod_subtype_compl s]
  simp only [Finset.tprod_subtype', mul_right_inj]
  rfl

@[deprecated (since := "2025-04-12")] alias sum_add_tsum_subtype_compl :=
  Summable.sum_add_tsum_subtype_compl
@[to_additive existing, deprecated (since := "2025-04-12")] alias prod_mul_tprod_subtype_compl :=
  Multipliable.prod_mul_tprod_subtype_compl

end IsUniformGroup

section IsTopologicalGroup

variable {G : Type*} [TopologicalSpace G] [CommGroup G] [IsTopologicalGroup G] {f : α → G}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `997b679f9c2f7f50facdd803466fed05c1558b13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
