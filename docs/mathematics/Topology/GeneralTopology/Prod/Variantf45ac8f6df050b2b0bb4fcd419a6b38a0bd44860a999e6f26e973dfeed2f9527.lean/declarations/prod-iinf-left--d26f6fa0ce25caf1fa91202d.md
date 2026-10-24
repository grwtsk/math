# prod_iInf_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:491f88cb-0eed-7462-4715-b1201cd26411",
  "kind": "theorem",
  "lexical_name": "prod_iInf_left",
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
  "slug": "prod-iinf-left--d26f6fa0ce25caf1fa91202d",
  "source": {
    "blob": "53afe17ee8eae880506230d460f7ed9b6c3e7e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d26f6fa0ce25caf1fa91202db1c6f977968fc19bb8569f5ad9bb92c9cc034ebb",
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

Occurrence: `result:491f88cb-0eed-7462-4715-b1201cd26411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_iInf_left [Nonempty ι] {f : ι → Filter α} {g : Filter β} :
    (⨅ i, f i) ×ˢ g = ⨅ i, f i ×ˢ g := by
  dsimp only [SProd.sprod]
  rw [Filter.prod, comap_iInf, iInf_inf]
  simp only [Filter.prod, eq_self_iff_true]
#align filter.prod_infi_left Filter.prod_iInf_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantf45ac8f6df050b2b0bb4fcd419a6b38a0bd44860a999e6f26e973dfeed2f9527.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53afe17ee8eae880506230d460f7ed9b6c3e7e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
