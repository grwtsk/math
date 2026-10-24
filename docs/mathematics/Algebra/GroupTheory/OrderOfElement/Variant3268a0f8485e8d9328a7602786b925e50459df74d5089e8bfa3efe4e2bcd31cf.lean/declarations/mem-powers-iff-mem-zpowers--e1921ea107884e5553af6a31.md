# mem_powers_iff_mem_zpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b866331e1dbf913189bcd6d1e2d0caeb33216378",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 811,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5fe8469-49b7-7ebf-1472-8bc9ad8cf7d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5b66828-5216-c30f-d68f-a41831de23f4",
  "kind": "theorem",
  "lexical_name": "mem_powers_iff_mem_zpowers",
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
  "slug": "mem-powers-iff-mem-zpowers--e1921ea107884e5553af6a31",
  "source": {
    "blob": "b866331e1dbf913189bcd6d1e2d0caeb33216378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 811,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1921ea107884e5553af6a31a95266a8f19082684348683db3eae81bd2acaf43",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5b66828-5216-c30f-d68f-a41831de23f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 811–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_powers_iff_mem_zpowers [Finite G] : y ∈ Submonoid.powers x ↔ y ∈ zpowers x :=
  ⟨fun ⟨n, hn⟩ => ⟨n, by simp_all⟩, fun ⟨i, hi⟩ =>
    ⟨(i % orderOf x).natAbs, by
      dsimp only
      rwa [← zpow_ofNat,
        Int.natAbs_of_nonneg (Int.emod_nonneg _ (Int.coe_nat_ne_zero_iff_pos.2 (orderOf_pos x))), ←
        zpow_eq_mod_orderOf]⟩⟩
#align mem_powers_iff_mem_zpowers mem_powers_iff_mem_zpowers
#align mem_multiples_iff_mem_zmultiples mem_multiples_iff_mem_zmultiples

@[to_additive multiples_eq_zmultiples]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean#L811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b866331e1dbf913189bcd6d1e2d0caeb33216378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
