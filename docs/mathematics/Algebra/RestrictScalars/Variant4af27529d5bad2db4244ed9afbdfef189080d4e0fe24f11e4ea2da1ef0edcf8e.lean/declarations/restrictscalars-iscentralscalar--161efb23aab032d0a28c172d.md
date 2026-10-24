# RestrictScalars.isCentralScalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5262cb0152d30a955993a7b6554f0d862ff32e3564508a8865c23e84c60f14f",
  "kind": "instance",
  "lexical_name": "RestrictScalars.isCentralScalar",
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
  "slug": "restrictscalars-iscentralscalar--161efb23aab032d0a28c172d",
  "source": {
    "blob": "d3e4f65429feedbdd551f5a64eb9be32bbeb0634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 133,
    "path": "GRWTSK/Algebra/RestrictScalars/Variant4af27529d5bad2db4244ed9afbdfef189080d4e0fe24f11e4ea2da1ef0edcf8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:161efb23aab032d0a28c172d829e959f9b7566ccf0a72d4fbcccc0444bb77f6d",
  "verification": {
    "reference": "docs/verification/Algebra/RestrictScalars/Variant4af27529d5bad2db4244ed9afbdfef189080d4e0fe24f11e4ea2da1ef0edcf8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5262cb0152d30a955993a7b6554f0d862ff32e3564508a8865c23e84c60f14f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RestrictScalars.isCentralScalar [Module S M] [Module Sᵐᵒᵖ M] [IsCentralScalar S M] :
    IsCentralScalar R (RestrictScalars R S M) where
  op_smul_eq_smul r _x := (op_smul_eq_smul (algebraMap R S r) (_ : M) :)

/-- The `R`-algebra homomorphism from the original coefficient algebra `S` to endomorphisms
of `RestrictScalars R S M`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RestrictScalars/Variant4af27529d5bad2db4244ed9afbdfef189080d4e0fe24f11e4ea2da1ef0edcf8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RestrictScalars/Variant4af27529d5bad2db4244ed9afbdfef189080d4e0fe24f11e4ea2da1ef0edcf8e.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e4f65429feedbdd551f5a64eb9be32bbeb0634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
