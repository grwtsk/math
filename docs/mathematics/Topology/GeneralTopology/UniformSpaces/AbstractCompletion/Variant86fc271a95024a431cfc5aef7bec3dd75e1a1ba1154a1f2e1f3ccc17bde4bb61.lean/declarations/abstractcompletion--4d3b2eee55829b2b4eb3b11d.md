# AbstractCompletion.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dea9093abefcc3710c0ce24ca500dac379d48de179b2423aafcbe720a91d7842",
  "kind": "structure",
  "lexical_name": "AbstractCompletion.",
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
  "slug": "abstractcompletion--4d3b2eee55829b2b4eb3b11d",
  "source": {
    "blob": "0cd1cc5fa209d5e22e9428ceb82432e859fcc359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d3b2eee55829b2b4eb3b11dad51cf356ec682831b20abd17143825c11bbed60",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dea9093abefcc3710c0ce24ca500dac379d48de179b2423aafcbe720a91d7842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AbstractCompletion.{v, u} (α : Type u) [UniformSpace α] where
  /-- The underlying space of the completion. -/
  space : Type v
  /-- A map from a space to its completion. -/
  coe : α → space
  /-- The completion carries a uniform structure. -/
  uniformStruct : UniformSpace space
  /-- The completion is complete. -/
  complete : CompleteSpace space
  /-- The completion is a T₀ space. -/
  separation : T0Space space
  /-- The map into the completion is uniform-inducing. -/
  isUniformInducing : IsUniformInducing coe
  /-- The map into the completion has dense range. -/
  dense : DenseRange coe

attribute [local instance]
  AbstractCompletion.uniformStruct AbstractCompletion.complete AbstractCompletion.separation

namespace AbstractCompletion

universe uα vα vα' uβ vβ uγ vγ

variable {α : Type uα} [UniformSpace α] (pkg : AbstractCompletion.{vα} α)

local notation "hatα" => pkg.space

local notation "ι" => pkg.coe

/-- If `α` is complete, then it is an abstract completion of itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd1cc5fa209d5e22e9428ceb82432e859fcc359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
