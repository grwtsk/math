# OrderEmbedding.mulLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d22cad2768760996b3315ec9fcb0c41482ff1ea7746b978e8f8734fb99674e3b",
  "kind": "def",
  "lexical_name": "OrderEmbedding.mulLeft",
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
  "slug": "orderembedding-mulleft--79686b32bb7e54ece9f6f3af",
  "source": {
    "blob": "4c459b572c1568f12512a4ffc0d555d6c2762d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 83,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79686b32bb7e54ece9f6f3af6cb6eb224bedcaf62853cd1669cb8527641967b8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d22cad2768760996b3315ec9fcb0c41482ff1ea7746b978e8f8734fb99674e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrderEmbedding.mulLeft {α : Type*} [Mul α] [LinearOrder α]
    [MulLeftStrictMono α] (m : α) : α ↪o α :=
  OrderEmbedding.ofStrictMono (fun n => m * n) fun _ _ w => mul_lt_mul_left' w m

/-- The order embedding sending `b` to `b * a`, for some fixed `a`.
See also `OrderIso.mulRight` when working in an ordered group. -/
@[to_additive (attr := simps!)
      "The order embedding sending `b` to `b + a`, for some fixed `a`.
       See also `OrderIso.addRight` when working in an additive ordered group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c459b572c1568f12512a4ffc0d555d6c2762d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
