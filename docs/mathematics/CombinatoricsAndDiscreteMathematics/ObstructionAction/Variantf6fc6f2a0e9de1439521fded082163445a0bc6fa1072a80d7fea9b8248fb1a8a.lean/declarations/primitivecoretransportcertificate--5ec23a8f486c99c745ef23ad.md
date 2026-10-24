# PrimitiveCoreTransportCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc95969d591a86e3d67a6ac7792b27e100678ddbba1dccba82fee87521d298f2",
  "kind": "structure",
  "lexical_name": "PrimitiveCoreTransportCertificate",
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
  "slug": "primitivecoretransportcertificate--5ec23a8f486c99c745ef23ad",
  "source": {
    "blob": "70af13891a541043e17753c81f57f539310896b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ObstructionAction/Variantf6fc6f2a0e9de1439521fded082163445a0bc6fa1072a80d7fea9b8248fb1a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ec23a8f486c99c745ef23ad01d2ba544f3e4d42ae9cc96c9bceb73520f6a337",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ObstructionAction/Variantf6fc6f2a0e9de1439521fded082163445a0bc6fa1072a80d7fea9b8248fb1a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc95969d591a86e3d67a6ac7792b27e100678ddbba1dccba82fee87521d298f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimitiveCoreTransportCertificate
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G) where
  transported :
    PrimitiveObstructionCertificate
      semantics
      (equivariance.actRegistry groupElement registry)
      (equivariance.actPartial groupElement state)
      (equivariance.actRegistry groupElement core)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ObstructionAction/Variantf6fc6f2a0e9de1439521fded082163445a0bc6fa1072a80d7fea9b8248fb1a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ObstructionAction/Variantf6fc6f2a0e9de1439521fded082163445a0bc6fa1072a80d7fea9b8248fb1a8a.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70af13891a541043e17753c81f57f539310896b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
