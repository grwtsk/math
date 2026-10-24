# coeSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1366c326a5e6bb5389e28b932f81a01f0d0ae6f2c350515ce6fd1305dfcad30d",
  "kind": "instance",
  "lexical_name": "coeSubmodule",
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
  "slug": "coesubmodule--1706e7e314d4bd8e0effa25f",
  "source": {
    "blob": "8703f5cd974327ecd1b536b4212b136a236dccf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1706e7e314d4bd8e0effa25f42b3a681cab55bb290ecc8e07ac052ff4cbeb30c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1366c326a5e6bb5389e28b932f81a01f0d0ae6f2c350515ce6fd1305dfcad30d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance coeSubmodule : CoeOut (LieSubmodule R L M) (Submodule R M) :=
  ⟨toSubmodule⟩
#align lie_submodule.coe_submodule LieSubmodule.coeSubmodule

-- Syntactic tautology
#noalign lie_submodule.to_submodule_eq_coe

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8703f5cd974327ecd1b536b4212b136a236dccf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
