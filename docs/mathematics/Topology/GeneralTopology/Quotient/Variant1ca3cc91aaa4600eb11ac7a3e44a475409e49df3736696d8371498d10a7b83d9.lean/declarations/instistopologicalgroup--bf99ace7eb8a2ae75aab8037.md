# instIsTopologicalGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa553e961af28769cd4c6b29d85b93d7f8e95367b6d6d92edb1d5ae513607dc9",
  "kind": "instance",
  "lexical_name": "instIsTopologicalGroup",
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
  "slug": "instistopologicalgroup--bf99ace7eb8a2ae75aab8037",
  "source": {
    "blob": "26077b1460ca7f968b9c9f04ce33e420dfb5871d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf99ace7eb8a2ae75aab8037ee369090679dfa6a2661563c64b9d75e9e93b678",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa553e961af28769cd4c6b29d85b93d7f8e95367b6d6d92edb1d5ae513607dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsTopologicalGroup [N.Normal] : IsTopologicalGroup (G ⧸ N) where
  continuous_mul := by
    rw [← (isOpenQuotientMap_mk.prodMap isOpenQuotientMap_mk).continuous_comp_iff]
    exact continuous_mk.comp continuous_mul
  continuous_inv := continuous_inv.quotient_map' _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26077b1460ca7f968b9c9f04ce33e420dfb5871d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
