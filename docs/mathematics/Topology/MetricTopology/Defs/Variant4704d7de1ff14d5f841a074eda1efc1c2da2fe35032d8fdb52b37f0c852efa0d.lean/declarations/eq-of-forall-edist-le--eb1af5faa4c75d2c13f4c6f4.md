# eq_of_forall_edist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f01cd7d0-cdd1-e6a3-db51-daa0c4529663",
  "kind": "theorem",
  "lexical_name": "eq_of_forall_edist_le",
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
  "slug": "eq-of-forall-edist-le--eb1af5faa4c75d2c13f4c6f4",
  "source": {
    "blob": "3ef0db6a6a6d35e7777c6a0769a4af5ddcdfdadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 846,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb1af5faa4c75d2c13f4c6f40826ad144c4c1ea652f551c30f32c25a2eceef56",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f01cd7d0-cdd1-e6a3-db51-daa0c4529663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_forall_edist_le {x y : γ} (h : ∀ ε > 0, edist x y ≤ ε) : x = y :=
  eq_of_edist_eq_zero (eq_of_le_of_forall_lt_imp_le_of_dense bot_le h)

/-- Auxiliary function to replace the uniformity on an emetric space with
a uniformity which is equal to the original one, but maybe not defeq.
This is useful if one wants to construct an emetric space with a
specified uniformity. See Note [forgetful inheritance] explaining why having definitionally
the right uniformity is often important.
See note [reducible non-instances].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef0db6a6a6d35e7777c6a0769a4af5ddcdfdadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
