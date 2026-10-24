# continuousSMul_of_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e1832d5-e9ae-39c4-3812-712609e40c98",
  "kind": "theorem",
  "lexical_name": "continuousSMul_of_algebraMap",
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
  "slug": "continuoussmul-of-algebramap--ac67cbc21d231a1b319f79b0",
  "source": {
    "blob": "cb4348d1937f60dabc763c8876c06e1a070f6212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac67cbc21d231a1b319f79b09fadd88d4252e040aef75460ec83163678786e6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e1832d5-e9ae-39c4-3812-712609e40c98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousSMul_of_algebraMap (h : Continuous (algebraMap R A)) : ContinuousSMul R A :=
  ⟨(continuous_algebraMap_iff_smul R A).1 h⟩
#align has_continuous_smul_of_algebra_map continuousSMul_of_algebraMap

variable [ContinuousSMul R A]

/-- The inclusion of the base ring in a topological algebra as a continuous linear map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb4348d1937f60dabc763c8876c06e1a070f6212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
