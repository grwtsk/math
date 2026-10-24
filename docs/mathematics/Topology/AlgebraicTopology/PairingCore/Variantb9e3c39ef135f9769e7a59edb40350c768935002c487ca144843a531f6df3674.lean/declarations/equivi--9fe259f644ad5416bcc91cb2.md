# equivI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90ab1944c6cac826677e85b6ad8353d148f4b5c1fc911a906cdd37b86def4d66",
  "kind": "def",
  "lexical_name": "equivI",
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
  "slug": "equivi--9fe259f644ad5416bcc91cb2",
  "source": {
    "blob": "34e85a707a447b069957a12af4ebf3bb603bf98e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 139,
    "path": "GRWTSK/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fe259f644ad5416bcc91cb23634d57c2c7907044839f51d23f87922f9725161",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90ab1944c6cac826677e85b6ad8353d148f4b5c1fc911a906cdd37b86def4d66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivI : h.ι ≃ h.I := Equiv.ofInjective _ h.injective_type₁

/-- The bijection `h.ι ≃ h.II` when `h : A.PairingCore`. -/
@[implicit_reducible, simps! apply_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e85a707a447b069957a12af4ebf3bb603bf98e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
