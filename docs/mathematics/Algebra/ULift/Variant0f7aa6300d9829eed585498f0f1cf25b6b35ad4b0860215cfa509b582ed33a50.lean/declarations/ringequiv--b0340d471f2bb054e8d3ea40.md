# ringEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd9d3723baff4aed15e84d401074401708fd6ca89559bc83ffcaad1885c4dbf4",
  "kind": "def",
  "lexical_name": "ringEquiv",
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
  "slug": "ringequiv--b0340d471f2bb054e8d3ea40",
  "source": {
    "blob": "ac66cd7129530a4cb80065f26ad25078a41b05b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0340d471f2bb054e8d3ea404055a5ebec44fa96efbb737927f64b8c56a57cd0",
  "verification": {
    "reference": "docs/verification/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd9d3723baff4aed15e84d401074401708fd6ca89559bc83ffcaad1885c4dbf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ringEquiv [NonUnitalNonAssocSemiring α] : ULift α ≃+* α where
  toFun := ULift.down
  invFun := ULift.up
  map_mul' _ _ := rfl
  map_add' _ _ := rfl
  left_inv := fun _ => rfl
  right_inv := fun _ => rfl
#align ulift.ring_equiv ULift.ringEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac66cd7129530a4cb80065f26ad25078a41b05b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
