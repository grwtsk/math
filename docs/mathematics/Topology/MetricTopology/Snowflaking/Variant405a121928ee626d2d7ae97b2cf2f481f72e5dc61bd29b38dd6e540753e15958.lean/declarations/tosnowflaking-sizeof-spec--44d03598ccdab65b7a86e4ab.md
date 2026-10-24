# toSnowflaking.sizeOf_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53b922d3-a602-b712-440c-abbe95386bd7",
  "kind": "theorem",
  "lexical_name": "toSnowflaking.sizeOf_spec",
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
  "slug": "tosnowflaking-sizeof-spec--44d03598ccdab65b7a86e4ab",
  "source": {
    "blob": "0594db49b9c1a76f005afb893b0996977af34fde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44d03598ccdab65b7a86e4abd9ff8f09c939c115bd783fc013bbfde4d896ba5c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b922d3-a602-b712-440c-abbe95386bd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSnowflaking.sizeOf_spec [SizeOf X] (x : X) :
    sizeOf (toSnowflaking x : Snowflaking X α hα₀ hα₁) = 1 + sizeOf x :=
  rfl

attribute [nolint simpNF] mk.injEq

/-- This definition makes `cases x` and `induction x` use `toSnowflaking` instead of `mk`. -/
@[elab_as_elim, cases_eliminator, induction_eliminator]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0594db49b9c1a76f005afb893b0996977af34fde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
