# relindex_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25447d21-63b3-5ee8-2ded-c3f31b94b46b",
  "kind": "theorem",
  "lexical_name": "relindex_comap",
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
  "slug": "relindex-comap--cf5ac6db81588cd308b17020",
  "source": {
    "blob": "fd92d2fadf85c5c82b849c6567702ba5c2c6dd81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variant33f8ad34f4a4906ec341acb0c1845f25d88a8b33503f4b1e601e0d29f9be9b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf5ac6db81588cd308b170206e423ad702c0c8b3bd012b0e8073d52dd1fe72f8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Index/Variant33f8ad34f4a4906ec341acb0c1845f25d88a8b33503f4b1e601e0d29f9be9b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25447d21-63b3-5ee8-2ded-c3f31b94b46b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relindex_comap {G' : Type*} [Group G'] (f : G' →* G) (K : Subgroup G') :
    relindex (comap f H) K = relindex H (map f K) := by
  rw [relindex, subgroupOf, comap_comap, index_comap, ← f.map_range, K.subtype_range]
#align subgroup.relindex_comap Subgroup.relindex_comap
#align add_subgroup.relindex_comap AddSubgroup.relindex_comap

variable {H K L}

@[to_additive relindex_mul_index]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variant33f8ad34f4a4906ec341acb0c1845f25d88a8b33503f4b1e601e0d29f9be9b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variant33f8ad34f4a4906ec341acb0c1845f25d88a8b33503f4b1e601e0d29f9be9b2b.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd92d2fadf85c5c82b849c6567702ba5c2c6dd81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
