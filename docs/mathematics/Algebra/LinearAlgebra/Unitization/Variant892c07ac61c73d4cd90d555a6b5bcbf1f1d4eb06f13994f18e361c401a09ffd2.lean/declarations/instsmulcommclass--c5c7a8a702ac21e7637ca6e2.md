# instSMulCommClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e0c1b8defa3161b39f5d6478c12ad1ba903d8308159ba7bae0373fe48beeeaf",
  "kind": "instance",
  "lexical_name": "instSMulCommClass",
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
  "slug": "instsmulcommclass--c5c7a8a702ac21e7637ca6e2",
  "source": {
    "blob": "8e90b80b9e5653c4a47f6423fc8a2b325d68fb7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 256,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5c7a8a702ac21e7637ca6e2e5c3d719cf7cd25388b228e5d0ecf2443d9e2693",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e0c1b8defa3161b39f5d6478c12ad1ba903d8308159ba7bae0373fe48beeeaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulCommClass [SMul T R] [SMul T A] [SMul S R] [SMul S A] [SMulCommClass T S R]
    [SMulCommClass T S A] : SMulCommClass T S (Unitization R A) :=
  equiv.smulCommClass T S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e90b80b9e5653c4a47f6423fc8a2b325d68fb7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
