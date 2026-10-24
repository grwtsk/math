# edistLtTopSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b3caf806530063b5784c4a3334f6b40a14a1e464af3d4e2270d48d70215c5e6",
  "kind": "def",
  "lexical_name": "edistLtTopSetoid",
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
  "slug": "edistlttopsetoid--3309bc543c2b7250da45d795",
  "source": {
    "blob": "3ef0db6a6a6d35e7777c6a0769a4af5ddcdfdadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 610,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3309bc543c2b7250da45d7959098425504f11fa7d4c88c72a023f11e668891a0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b3caf806530063b5784c4a3334f6b40a14a1e464af3d4e2270d48d70215c5e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def edistLtTopSetoid : Setoid α where
  r x y := edist x y < ⊤
  iseqv :=
    { refl x := by rw [edist_self]; exact ENNReal.coe_lt_top
      symm h := by rwa [edist_comm]
      trans hxy hyz := lt_of_le_of_lt (edist_triangle _ _ _) (ENNReal.add_lt_top.2 ⟨hxy, hyz⟩) }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef0db6a6a6d35e7777c6a0769a4af5ddcdfdadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
