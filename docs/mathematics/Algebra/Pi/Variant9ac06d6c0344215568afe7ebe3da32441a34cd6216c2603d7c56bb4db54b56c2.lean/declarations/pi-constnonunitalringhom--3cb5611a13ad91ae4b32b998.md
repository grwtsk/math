# Pi.constNonUnitalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82f14efd2eae50e5e596713e028a4dc81de7d7737e14f47465baf2204d6ab239",
  "kind": "def",
  "lexical_name": "Pi.constNonUnitalRingHom",
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
  "slug": "pi-constnonunitalringhom--3cb5611a13ad91ae4b32b998",
  "source": {
    "blob": "f977d8d5c91ff19d2e1914411b60d6a58988f13e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cb5611a13ad91ae4b32b998965dc8398c1adffccd1663b8d4360a612b664ce2",
  "verification": {
    "reference": "docs/verification/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82f14efd2eae50e5e596713e028a4dc81de7d7737e14f47465baf2204d6ab239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pi.constNonUnitalRingHom (α β : Type*) [NonUnitalNonAssocSemiring β] : β →ₙ+* α → β :=
  { Pi.nonUnitalRingHom fun _ => NonUnitalRingHom.id β with toFun := Function.const _ }
#align pi.const_non_unital_ring_hom Pi.constNonUnitalRingHom

/-- Non-unital ring homomorphism between the function spaces `I → α` and `I → β`, induced by a
non-unital ring homomorphism `f` between `α` and `β`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f977d8d5c91ff19d2e1914411b60d6a58988f13e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
