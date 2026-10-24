# reindexLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43efe53833645acecd9aa5e889420e3cf83dce3c39c939b265627cd786a23cbf",
  "kind": "def",
  "lexical_name": "reindexLinearEquiv",
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
  "slug": "reindexlinearequiv--f969311214a35af319fcaa0c",
  "source": {
    "blob": "bd99760518a771e512224a60c2cf24073b88bd47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f969311214a35af319fcaa0c8b18cca51d07671afcb4a846d5a116a4c933d69e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43efe53833645acecd9aa5e889420e3cf83dce3c39c939b265627cd786a23cbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reindexLinearEquiv (eₘ : m ≃ m') (eₙ : n ≃ n') : Matrix m n A ≃ₗ[R] Matrix m' n' A where
  __ := reindexAddEquiv A eₘ eₙ
  map_smul' _ _ := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd99760518a771e512224a60c2cf24073b88bd47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
