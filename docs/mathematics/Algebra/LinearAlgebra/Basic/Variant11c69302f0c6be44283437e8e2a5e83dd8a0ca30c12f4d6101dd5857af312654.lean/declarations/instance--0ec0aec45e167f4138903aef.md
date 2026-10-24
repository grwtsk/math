# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:663f4a0b7b6a8c00f78bdefe482d6be658cc2ef0868027e38b89e21092d8bf12",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0ec0aec45e167f4138903aef",
  "source": {
    "blob": "b896d55d202d85cb94367bb9f81a0f1b13442b4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ec0aec45e167f4138903aef281d505f64fb4d2dff58efa2f0e8f5e21cd78163",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:663f4a0b7b6a8c00f78bdefe482d6be658cc2ef0868027e38b89e21092d8bf12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FunLike (Derivation R A M) A M where
  coe D := D.toFun
  coe_injective' D1 D2 h := by cases D1; cases D2; congr; exact DFunLike.coe_injective h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b896d55d202d85cb94367bb9f81a0f1b13442b4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
