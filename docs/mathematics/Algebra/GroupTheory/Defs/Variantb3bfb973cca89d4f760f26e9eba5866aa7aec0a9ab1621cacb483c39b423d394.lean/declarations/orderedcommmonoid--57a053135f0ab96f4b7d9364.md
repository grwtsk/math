# orderedCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f82fb4169b478145071374c0b1814e1c7b559b86a65a6241b4354c1c09d71e5b",
  "kind": "instance",
  "lexical_name": "orderedCommMonoid",
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
  "slug": "orderedcommmonoid--57a053135f0ab96f4b7d9364",
  "source": {
    "blob": "7618953030baaed4a19107335fa4b412c97625c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 104,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57a053135f0ab96f4b7d9364203528307d2582a51d277a1bf640b79b3506605c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f82fb4169b478145071374c0b1814e1c7b559b86a65a6241b4354c1c09d71e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance orderedCommMonoid [OrderedCommMonoid α] : OrderedCommMonoid (WithZero α) :=
  { WithZero.commMonoidWithZero.toCommMonoid, WithZero.partialOrder with
    mul_le_mul_left := fun _ _ => mul_le_mul_left' }

-- FIXME: `WithOne.coe_mul` and `WithZero.coe_mul` have inconsistent use of implicit parameters

-- Porting note: same issue as `covariantClass_mul_le`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7618953030baaed4a19107335fa4b412c97625c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
