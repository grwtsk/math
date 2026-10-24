# finprod_mem_union_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e57a09e-9e8c-0d91-9fc5-c65666082dbb",
  "kind": "theorem",
  "lexical_name": "finprod_mem_union_inter",
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
  "slug": "finprod-mem-union-inter--24c4800a3d8fc82c974c4e7b",
  "source": {
    "blob": "59c7b9fbb6e2aa88d2b73affa83e503356bcad58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 806,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variantfbf36d4e85e3dc96ac1ece87de1e8471b35db813f6bc980b0f4f40e0a08b94da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24c4800a3d8fc82c974c4e7b8532d4efdfe6676f940bea40953361eb10525507",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variantfbf36d4e85e3dc96ac1ece87de1e8471b35db813f6bc980b0f4f40e0a08b94da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e57a09e-9e8c-0d91-9fc5-c65666082dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_mem_union_inter (hs : s.Finite) (ht : t.Finite) :
    ((∏ᶠ i ∈ s ∪ t, f i) * ∏ᶠ i ∈ s ∩ t, f i) = (∏ᶠ i ∈ s, f i) * ∏ᶠ i ∈ t, f i := by
  lift s to Finset α using hs; lift t to Finset α using ht
  classical
    rw [← Finset.coe_union, ← Finset.coe_inter]
    simp only [finprod_mem_coe_finset, Finset.prod_union_inter]

/-- A more general version of `finprod_mem_union_inter` that requires `s ∩ mulSupport f` and
`t ∩ mulSupport f` rather than `s` and `t` to be finite. -/
@[to_additive
      /-- A more general version of `finsum_mem_union_inter` that requires `s ∩ support f` and
      `t ∩ support f` rather than `s` and `t` to be finite. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variantfbf36d4e85e3dc96ac1ece87de1e8471b35db813f6bc980b0f4f40e0a08b94da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variantfbf36d4e85e3dc96ac1ece87de1e8471b35db813f6bc980b0f4f40e0a08b94da.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c7b9fbb6e2aa88d2b73affa83e503356bcad58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
