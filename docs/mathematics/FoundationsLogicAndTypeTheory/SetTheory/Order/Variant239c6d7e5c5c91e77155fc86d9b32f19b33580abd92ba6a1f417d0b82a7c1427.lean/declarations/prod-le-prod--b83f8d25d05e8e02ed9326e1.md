# prod_le_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cbca1c6-e375-e660-612f-30db7bcac07f",
  "kind": "theorem",
  "lexical_name": "prod_le_prod",
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
  "slug": "prod-le-prod--b83f8d25d05e8e02ed9326e1",
  "source": {
    "blob": "056e359aadb5dbb586cf75ae2743cf9294b97c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 586,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b83f8d25d05e8e02ed9326e1d15078065269df39fbf93102a1dfa4a5234992e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cbca1c6-e375-e660-612f-30db7bcac07f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_le_prod {ι} (f g : ι → Cardinal) (H : ∀ i, f i ≤ g i) : prod f ≤ prod g :=
  ⟨Embedding.piCongrRight fun i =>
      Classical.choice <| by have := H i; rwa [← mk_out (f i), ← mk_out (g i)] at this⟩

/-! ### The first infinite cardinal `aleph0` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `056e359aadb5dbb586cf75ae2743cf9294b97c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
