# HomotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e440738c3f7480429d19d8af6e36ba820edf92af82d9c265a17ca7ed6a7a611",
  "kind": "structure",
  "lexical_name": "HomotopyEquiv",
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
  "slug": "homotopyequiv--28d613ee30db51b4fbc5c6a8",
  "source": {
    "blob": "d909aa0b84ea49ccd1fa528130805e79fbb920de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28d613ee30db51b4fbc5c6a8e0f495da7d027bf77a246bf0738102ed1c5b6928",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e440738c3f7480429d19d8af6e36ba820edf92af82d9c265a17ca7ed6a7a611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HomotopyEquiv (X : Type u) (Y : Type v) [TopologicalSpace X] [TopologicalSpace Y] where
  toFun : C(X, Y)
  invFun : C(Y, X)
  left_inv : (invFun.comp toFun).Homotopic (ContinuousMap.id X)
  right_inv : (toFun.comp invFun).Homotopic (ContinuousMap.id Y)

@[inherit_doc] scoped infixl:25 " ≃ₕ " => ContinuousMap.HomotopyEquiv

namespace HomotopyEquiv

/-- Coercion of a `HomotopyEquiv` to function. While the Lean 4 way is to unfold coercions, this
auxiliary definition will make porting of Lean 3 code easier.

Porting note (https://github.com/leanprover-community/mathlib4/issues/11215): TODO: drop this definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d909aa0b84ea49ccd1fa528130805e79fbb920de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
