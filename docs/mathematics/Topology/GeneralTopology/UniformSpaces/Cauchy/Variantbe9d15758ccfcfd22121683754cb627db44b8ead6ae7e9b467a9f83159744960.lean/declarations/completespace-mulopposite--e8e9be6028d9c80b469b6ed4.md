# CompleteSpace.mulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:409cbeccbb4eec1f344e7ad37dc9999a70e3204ef2ac394dcdc019c71d4c8799",
  "kind": "instance",
  "lexical_name": "CompleteSpace.mulOpposite",
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
  "slug": "completespace-mulopposite--e8e9be6028d9c80b469b6ed4",
  "source": {
    "blob": "8d844b674942d472920dc2e03d2c80465cc96dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 425,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8e9be6028d9c80b469b6ed41d3f2ec979ca11696ffe86f1a1afa747f8e0eb68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:409cbeccbb4eec1f344e7ad37dc9999a70e3204ef2ac394dcdc019c71d4c8799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CompleteSpace.mulOpposite [CompleteSpace α] : CompleteSpace αᵐᵒᵖ where
  complete hf :=
    MulOpposite.op_surjective.exists.mpr <|
      let ⟨x, hx⟩ := CompleteSpace.complete (hf.map MulOpposite.uniformContinuous_unop)
      ⟨x, (map_le_iff_le_comap.mp hx).trans_eq <| MulOpposite.comap_unop_nhds _⟩
#align complete_space.mul_opposite CompleteSpace.mulOpposite
#align complete_space.add_opposite CompleteSpace.addOpposite

/-- If `univ` is complete, the space is a complete space -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d844b674942d472920dc2e03d2c80465cc96dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
