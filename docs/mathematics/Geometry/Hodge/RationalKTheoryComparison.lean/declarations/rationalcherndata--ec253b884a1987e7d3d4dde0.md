# RationalChernData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:557a88d6c92d0869b0dba8d641b1ab65dab9914cb77ae95403212d0c1ce3e13a",
  "kind": "structure",
  "lexical_name": "RationalChernData",
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
  "slug": "rationalcherndata--ec253b884a1987e7d3d4dde0",
  "source": {
    "blob": "997f612416073194ef9f54f013fd6720066838b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 52,
    "path": "GRWTSK/Geometry/Hodge/RationalKTheoryComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec253b884a1987e7d3d4dde06e687fd7259b9005bf8314f7df4839b669585444",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/RationalKTheoryComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:557a88d6c92d0869b0dba8d641b1ab65dab9914cb77ae95403212d0c1ce3e13a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RationalChernData
    (KQ : Type u) (Cycle : Type v)
    [AddCommGroup KQ] [Module ℚ KQ]
    [AddCommGroup Cycle] [Module ℚ Cycle] where
  chern : KQ →ₗ[ℚ] Cycle
  correction : KQ →ₗ[ℚ] Cycle
  cycleFromK : KQ →ₗ[ℚ] Cycle
  cycleFromK_eq : cycleFromK = chern + correction
  degreeProfile : String
  supportProfile : String
  pushforwardConvention : String

namespace RationalChernData

variable {KQ : Type u} {Cycle : Type v}
variable [AddCommGroup KQ] [Module ℚ KQ]
variable [AddCommGroup Cycle] [Module ℚ Cycle]

/-- The selected cycle image is the Chern contribution plus the declared correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/RationalKTheoryComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/RationalKTheoryComparison.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `997f612416073194ef9f54f013fd6720066838b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
