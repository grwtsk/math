# closure_subset_mul_right_of_mem_nhds_one_of_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4134e8c4-5a7f-6ca2-bfce-8f319e316f23",
  "kind": "theorem",
  "lexical_name": "closure_subset_mul_right_of_mem_nhds_one_of_inv",
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
  "slug": "closure-subset-mul-right-of-mem-nhds-one-of-inv--29c6aa2dbcaa0565fef3bee4",
  "source": {
    "blob": "7dee92db3f27688625c9e1dbcb309f4152148de8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantc5265e4a087c8e2e105ef133033d05af344b959befe9e38660d84aa3fb9a365f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c6aa2dbcaa0565fef3bee4ac9ef9c61eb1e89298a61e34ee90f2fd4bdd2102",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variantc5265e4a087c8e2e105ef133033d05af344b959befe9e38660d84aa3fb9a365f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4134e8c4-5a7f-6ca2-bfce-8f319e316f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_subset_mul_right_of_mem_nhds_one_of_inv (s : Set G) {s' : Set G}
    (hs'₀ : s' ∈ 𝓝 1) (h_symm : ∀ x ∈ s', x⁻¹ ∈ s') :
    closure s ⊆ s * s' := by
  intro y hy
  obtain ⟨_, ⟨b, hb, rfl⟩, hc⟩ :=
    mem_closure_iff_nhds.mp hy ((y * ·) '' s')
      (by simpa using (isOpenMap_mul_left y).image_mem_nhds hs'₀)
  simpa using Set.mul_mem_mul hc (h_symm b hb)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variantc5265e4a087c8e2e105ef133033d05af344b959befe9e38660d84aa3fb9a365f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variantc5265e4a087c8e2e105ef133033d05af344b959befe9e38660d84aa3fb9a365f.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dee92db3f27688625c9e1dbcb309f4152148de8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
