# mul_subset_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9275f83-e2c1-48c5-8fb4-0845b512059a",
  "kind": "theorem",
  "lexical_name": "mul_subset_closure",
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
  "slug": "mul-subset-closure--daa69157c9bee426027c60f9",
  "source": {
    "blob": "309988422c05d0a9a2dbc192d75d079398c8c206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 75,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daa69157c9bee426027c60f94ad53218d0cf88ecb467864df577b9a0e9007630",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9275f83-e2c1-48c5-8fb4-0845b512059a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_subset_closure (hs : s ⊆ u) (ht : t ⊆ u) : s * t ⊆ Submonoid.closure u :=
  mul_subset (Subset.trans hs Submonoid.subset_closure) (Subset.trans ht Submonoid.subset_closure)
#align submonoid.mul_subset_closure Submonoid.mul_subset_closure
#align add_submonoid.add_subset_closure AddSubmonoid.add_subset_closure

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `309988422c05d0a9a2dbc192d75d079398c8c206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
