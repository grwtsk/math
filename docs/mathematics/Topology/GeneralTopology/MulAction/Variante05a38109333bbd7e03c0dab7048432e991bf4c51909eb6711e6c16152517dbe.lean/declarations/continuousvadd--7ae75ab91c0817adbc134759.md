# ContinuousVAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3daea0e6e53850514c1ba2e72a58993e85fb02576f42bb6c0b7593f933f467d3",
  "kind": "class",
  "lexical_name": "ContinuousVAdd",
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
  "slug": "continuousvadd--7ae75ab91c0817adbc134759",
  "source": {
    "blob": "134113ff690bb9685970d79c1bab63af9cecc7b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ae75ab91c0817adbc1347590fdd1e4eeada42795a6ad16f4b2d5dc101225541",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3daea0e6e53850514c1ba2e72a58993e85fb02576f42bb6c0b7593f933f467d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousVAdd (M X : Type*) [VAdd M X] [TopologicalSpace M] [TopologicalSpace X] :
    Prop where
  /-- The additive action `(+ᵥ)` is continuous. -/
  continuous_vadd : Continuous fun p : M × X => p.1 +ᵥ p.2

export ContinuousVAdd (continuous_vadd)

attribute [to_additive] ContinuousSMul

attribute [continuity, fun_prop] continuous_smul continuous_vadd

section Main

variable {M X Y α : Type*} [TopologicalSpace M] [TopologicalSpace X] [TopologicalSpace Y]

section SMul

variable [SMul M X] [ContinuousSMul M X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `134113ff690bb9685970d79c1bab63af9cecc7b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
