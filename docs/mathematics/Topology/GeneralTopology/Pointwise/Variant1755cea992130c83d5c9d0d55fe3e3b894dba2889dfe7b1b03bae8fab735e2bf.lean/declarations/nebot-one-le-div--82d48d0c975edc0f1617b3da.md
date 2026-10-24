# NeBot.one_le_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf9b547f-e8a5-78b6-900e-9135c3c256f0",
  "kind": "theorem",
  "lexical_name": "NeBot.one_le_div",
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
  "slug": "nebot-one-le-div--82d48d0c975edc0f1617b3da",
  "source": {
    "blob": "f44f14855a7cceda6219b62385caf571a591ca77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 711,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82d48d0c975edc0f1617b3dad8d8608cbb965de99ae051f0e3b823eb1c3e52c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf9b547f-e8a5-78b6-900e-9135c3c256f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NeBot.one_le_div (h : f.NeBot) : 1 ≤ f / f := by
  rintro s ⟨t₁, h₁, t₂, h₂, hs⟩
  obtain ⟨a, ha₁, ha₂⟩ := Set.not_disjoint_iff.1 (h.not_disjoint h₁ h₂)
  rw [mem_one, ← div_self' a]
  exact hs (Set.div_mem_div ha₁ ha₂)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44f14855a7cceda6219b62385caf571a591ca77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
