# isAdjoinRootMonic_root_eq_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dde3c6f-de19-7152-7f0a-fb25674f5a78",
  "kind": "theorem",
  "lexical_name": "isAdjoinRootMonic_root_eq_root",
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
  "slug": "isadjoinrootmonic-root-eq-root--ec7694bd8d55e1a9a7817669",
  "source": {
    "blob": "132ca4c2668a0947fba63b69460c42efe153803b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 354,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec7694bd8d55e1a9a7817669438613b0f655ee83be5bebb46c6eac9492136329",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dde3c6f-de19-7152-7f0a-fb25674f5a78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAdjoinRootMonic_root_eq_root (hf : Monic f) :
    (AdjoinRoot.isAdjoinRootMonic f hf).root = AdjoinRoot.root f := by
  simp only [IsAdjoinRoot.root, AdjoinRoot.root, AdjoinRoot.isAdjoinRootMonic_map_eq_mk]
#align adjoin_root.is_adjoin_root_monic_root_eq_root AdjoinRoot.isAdjoinRootMonic_root_eq_root

end AdjoinRoot

namespace IsAdjoinRootMonic

open IsAdjoinRoot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132ca4c2668a0947fba63b69460c42efe153803b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
