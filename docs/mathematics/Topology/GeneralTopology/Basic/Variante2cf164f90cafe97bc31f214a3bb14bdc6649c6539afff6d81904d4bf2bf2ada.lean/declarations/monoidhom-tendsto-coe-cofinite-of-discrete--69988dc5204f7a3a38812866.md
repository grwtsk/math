# MonoidHom.tendsto_coe_cofinite_of_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64c7e764-3cc5-dcde-41ca-3ae71feac311",
  "kind": "lemma",
  "lexical_name": "MonoidHom.tendsto_coe_cofinite_of_discrete",
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
  "slug": "monoidhom-tendsto-coe-cofinite-of-discrete--69988dc5204f7a3a38812866",
  "source": {
    "blob": "b8c559016475cc6c7c1fb9abd49068dc6528497f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 242,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69988dc5204f7a3a38812866ff5720b8702f424e419e17f1ff980c2510db140f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64c7e764-3cc5-dcde-41ca-3ae71feac311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MonoidHom.tendsto_coe_cofinite_of_discrete [T2Space G] {H : Type*} [Group H] {f : H →* G}
    (hf : Function.Injective f) (hf' : DiscreteTopology f.range) :
    Tendsto f cofinite (cocompact _) := by
  replace hf : Function.Injective f.rangeRestrict := by simpa
  exact f.range.tendsto_coe_cofinite_of_discrete.comp hf.tendsto_cofinite

end IsTopologicalGroup

namespace IsTopologicalGroup

variable {ι α G : Type*} [Group G] [u : UniformSpace G] [IsTopologicalGroup G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c559016475cc6c7c1fb9abd49068dc6528497f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
