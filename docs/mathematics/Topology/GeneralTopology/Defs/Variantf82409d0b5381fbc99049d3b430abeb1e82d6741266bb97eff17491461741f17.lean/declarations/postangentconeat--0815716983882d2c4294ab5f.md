# posTangentConeAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea830f348c2fa5da14e4681c96e13715276b5ecb7f4acf541e1bd7ee4c37629a",
  "kind": "abbrev",
  "lexical_name": "posTangentConeAt",
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
  "slug": "postangentconeat--0815716983882d2c4294ab5f",
  "source": {
    "blob": "5e67d6350787edced44b423a811321babdf6dbba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantf82409d0b5381fbc99049d3b430abeb1e82d6741266bb97eff17491461741f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0815716983882d2c4294ab5fc9fa9739040c106a9a7a03f7253e9409d2015710",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantf82409d0b5381fbc99049d3b430abeb1e82d6741266bb97eff17491461741f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea830f348c2fa5da14e4681c96e13715276b5ecb7f4acf541e1bd7ee4c37629a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev posTangentConeAt [AddCommGroup E] [Module ℝ E] [TopologicalSpace E] (s : Set E) (x : E) :
    Set E :=
  tangentConeAt NNReal s x

variable [Semiring R] [AddCommGroup E] [Module R E] [TopologicalSpace E]

/-- A property ensuring that the tangent cone to `s` at `x` spans a dense subset of the whole space.
The main role of this property is to ensure that the differential within `s` at `x` is unique,
hence this name. The uniqueness it asserts is proved in `UniqueDiffWithinAt.eq` in
`Mathlib/Analysis/Calculus/FDeriv/Basic.lean`.
To avoid pathologies in dimension 0, we also require that `x` belongs to the closure of `s` (which
is automatic when `E` is not `0`-dimensional). -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantf82409d0b5381fbc99049d3b430abeb1e82d6741266bb97eff17491461741f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantf82409d0b5381fbc99049d3b430abeb1e82d6741266bb97eff17491461741f17.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e67d6350787edced44b423a811321babdf6dbba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
