# CokernelData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da4e4eb37eeab47cd65b7beed97dfeb7a3b84c8ee6ef10107804cf1fd4d78c1e",
  "kind": "structure",
  "lexical_name": "CokernelData",
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
  "slug": "cokerneldata--5a6a034eb5a331f53da61209",
  "source": {
    "blob": "d9f2c84e6cd05a60f6a9ef3b89484c3482715f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 45,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a6a034eb5a331f53da61209c0289ab8d2df71e6d8b728f7498e174bb1b5042a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da4e4eb37eeab47cd65b7beed97dfeb7a3b84c8ee6ef10107804cf1fd4d78c1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CokernelData where
  /-- a lifting of `f (g₁ i)` in `pres₂.G →₀ A` -/
  lift (i : ι) : pres₂.G →₀ A
  π_lift (i : ι) : pres₂.π (lift i) = f (g₁ i)

/-- Constructor for `Presentation.CokernelData` in case we have a chosen set-theoretic
section of the projection `(pres₂.G →₀ A) → M₂`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9f2c84e6cd05a60f6a9ef3b89484c3482715f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
