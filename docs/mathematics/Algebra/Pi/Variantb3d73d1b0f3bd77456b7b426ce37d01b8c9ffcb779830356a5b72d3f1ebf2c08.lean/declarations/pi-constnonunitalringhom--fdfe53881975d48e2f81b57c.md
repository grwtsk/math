# Pi.constNonUnitalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:832afb14a762d2babb8e90879ca96a01365fdc5c0fc38dbc460352b1b92e167a",
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
  "slug": "pi-constnonunitalringhom--fdfe53881975d48e2f81b57c",
  "source": {
    "blob": "f73f3067e3d3d07ee403439c0d146ab663c90241",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 145,
    "path": "GRWTSK/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdfe53881975d48e2f81b57c001b949de173a513229bb129a0a1ef23ddaa0e23",
  "verification": {
    "reference": "docs/verification/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:832afb14a762d2babb8e90879ca96a01365fdc5c0fc38dbc460352b1b92e167a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–151.

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

[Verification target and public status](../../../../../verification/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f73f3067e3d3d07ee403439c0d146ab663c90241` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
