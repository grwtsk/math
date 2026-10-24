# Subsemigroup.centerToMulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:429d1f4bf39a3895c29de91ab9ed77f09f94adb85bfa48a30ee87f0f41956698",
  "kind": "def",
  "lexical_name": "Subsemigroup.centerToMulOpposite",
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
  "slug": "subsemigroup-centertomulopposite--3d39bf760780a74662ead81f",
  "source": {
    "blob": "9df9ff1cbc2c987355fe15a293687ee03ea431b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 196,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d39bf760780a74662ead81f093a6c743a3dc9830cd8a22973f25e3f2df17a25",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:429d1f4bf39a3895c29de91ab9ed77f09f94adb85bfa48a30ee87f0f41956698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subsemigroup.centerToMulOpposite [Mul M] : center M ≃* center Mᵐᵒᵖ where
  toFun r := ⟨_, MulOpposite.op_mem_center_iff.mpr r.2⟩
  invFun r := ⟨_, MulOpposite.unop_mem_center_iff.mpr r.2⟩
  map_mul' r _ := Subtype.ext (congr_arg MulOpposite.op <| r.2.1 _)

/-- The center of a monoid is isomorphic to the center of its opposite. -/
@[to_additive (attr := simps!)
/-- The center of an additive monoid is isomorphic to the center of its opposite. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df9ff1cbc2c987355fe15a293687ee03ea431b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
