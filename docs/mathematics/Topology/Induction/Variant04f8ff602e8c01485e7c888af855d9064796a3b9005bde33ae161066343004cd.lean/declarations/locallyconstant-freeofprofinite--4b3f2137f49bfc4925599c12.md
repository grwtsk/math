# LocallyConstant.freeOfProfinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a601b64cd7d757bcd11c3f49a03336960af338fdfafaa71df2327fe396f9f805",
  "kind": "instance",
  "lexical_name": "LocallyConstant.freeOfProfinite",
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
  "slug": "locallyconstant-freeofprofinite--4b3f2137f49bfc4925599c12",
  "source": {
    "blob": "a07cc68566e7164526b9ac4f3526373b7a6c972a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 154,
    "path": "GRWTSK/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b3f2137f49bfc4925599c12b5acde4b273da5082f292a27a1581ada030bca08",
  "verification": {
    "reference": "docs/verification/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a601b64cd7d757bcd11c3f49a03336960af338fdfafaa71df2327fe396f9f805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance LocallyConstant.freeOfProfinite (S : Profinite.{u}) :
    Module.Free ℤ (LocallyConstant S ℤ) := by
  obtain ⟨_, _⟩ := exists_wellOrder {C : Set S // IsClopen C}
  exact @Nobeling_aux {C : Set S // IsClopen C} _ _ S (Nobeling.ι S) (Nobeling.isClosedEmbedding S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a07cc68566e7164526b9ac4f3526373b7a6c972a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
