# Ico_disjoint_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:849c6a91-5dea-1d20-8600-4526759c989f",
  "kind": "theorem",
  "lexical_name": "Ico_disjoint_Ico",
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
  "slug": "ico-disjoint-ico--054e174e1c88b4b66aec0f1c",
  "source": {
    "blob": "e07ed1034137dde2375be2ce46cb41aab3b473b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:054e174e1c88b4b66aec0f1cfe1bfe8c45aacbe64693f2a39732e498b90245cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:849c6a91-5dea-1d20-8600-4526759c989f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_disjoint_Ico {a b c d : α} (h : b ≤ c) : Disjoint (Ico a b) (Ico c d) :=
  disjoint_left.mpr fun hab hbc => by
    rw [mem_Ico] at hab hbc
    exact hab.2.not_le (h.trans hbc.1)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07ed1034137dde2375be2ce46cb41aab3b473b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
