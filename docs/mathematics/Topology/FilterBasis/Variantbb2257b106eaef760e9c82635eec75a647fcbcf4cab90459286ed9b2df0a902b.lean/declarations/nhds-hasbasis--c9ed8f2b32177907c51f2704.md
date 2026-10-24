# nhds_hasBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e9a86b2-c796-e174-087a-0dff72834e79",
  "kind": "theorem",
  "lexical_name": "nhds_hasBasis",
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
  "slug": "nhds-hasbasis--c9ed8f2b32177907c51f2704",
  "source": {
    "blob": "b7caf0144c9aa0c10f4b48059ff7b54c578b4ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 179,
    "path": "GRWTSK/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9ed8f2b32177907c51f2704a3a96dd75aa2e8f02e24910192ce294b62dd4832",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e9a86b2-c796-e174-087a-0dff72834e79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_hasBasis (B : GroupFilterBasis G) (x₀ : G) :
    HasBasis (@nhds G B.topology x₀) (fun V : Set G ↦ V ∈ B) fun V ↦ (fun y ↦ x₀ * y) '' V := by
  rw [B.nhds_eq]
  apply B.hasBasis

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7caf0144c9aa0c10f4b48059ff7b54c578b4ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
