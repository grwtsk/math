# decidableMemMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:617c97b22ae2e9b542104c90b6e96ba7ef689cccd911e029311c5cc1b402c4d3",
  "kind": "instance",
  "lexical_name": "decidableMemMul",
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
  "slug": "decidablememmul--bf5de8b362e98b8c429e1088",
  "source": {
    "blob": "6eda7982aaaba49dddae7f89573823741de89474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 54,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf5de8b362e98b8c429e10888b4073e4979a32bdc38706cd2d520d888e315924",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:617c97b22ae2e9b542104c90b6e96ba7ef689cccd911e029311c5cc1b402c4d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableMemMul [Fintype α] [DecidableEq α] [DecidablePred (· ∈ s)]
    [DecidablePred (· ∈ t)] : DecidablePred (· ∈ s * t) := fun _ ↦ decidable_of_iff _ mem_mul.symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eda7982aaaba49dddae7f89573823741de89474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
