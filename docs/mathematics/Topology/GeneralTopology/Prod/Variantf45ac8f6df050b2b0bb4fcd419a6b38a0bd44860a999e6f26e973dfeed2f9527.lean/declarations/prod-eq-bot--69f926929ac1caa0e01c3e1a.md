# prod_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee696375-b6b9-2ebf-ec5d-4979d5088f10",
  "kind": "theorem",
  "lexical_name": "prod_eq_bot",
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
  "slug": "prod-eq-bot--69f926929ac1caa0e01c3e1a",
  "source": {
    "blob": "53afe17ee8eae880506230d460f7ed9b6c3e7e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 429,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69f926929ac1caa0e01c3e1a1e26a98764114035cd024144ff829b4b9a056412",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee696375-b6b9-2ebf-ec5d-4979d5088f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_eq_bot {f : Filter α} {g : Filter β} : f ×ˢ g = ⊥ ↔ f = ⊥ ∨ g = ⊥ := by
  simp_rw [← empty_mem_iff_bot, mem_prod_iff, subset_empty_iff, prod_eq_empty_iff, ← exists_prop,
    Subtype.exists', exists_or, exists_const, Subtype.exists, exists_prop, exists_eq_right]
#align filter.prod_eq_bot Filter.prod_eq_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53afe17ee8eae880506230d460f7ed9b6c3e7e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
