# isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4568f764476fe2893cd09e57c9ba2a0cec102859379898d7ee427ae5e9087af",
  "kind": "instance",
  "lexical_name": "isScalarTower",
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
  "slug": "isscalartower--bfc84d66a6edd77058181aea",
  "source": {
    "blob": "ade9e6ec7cbf02acb0a6ef9d604b2bb3d7670e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Algebra/GroupTheory/MulAction/Variantb10219dc4ba3ebdd331974b728f260b4660c3cfbbd3c48746c6b8aecac537a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfc84d66a6edd77058181aeab5ddc05aab798d089b7d4c6f71d4acb379daf62b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MulAction/Variantb10219dc4ba3ebdd331974b728f260b4660c3cfbbd3c48746c6b8aecac537a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4568f764476fe2893cd09e57c9ba2a0cec102859379898d7ee427ae5e9087af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTower [SMul α β] [SMul M' α] [SMul M' β] [IsScalarTower M' α β]
      (S : Submonoid M') :
    IsScalarTower S α β :=
  inferInstance

section SMul
variable [SMul M' α] {S : Submonoid M'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MulAction/Variantb10219dc4ba3ebdd331974b728f260b4660c3cfbbd3c48746c6b8aecac537a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MulAction/Variantb10219dc4ba3ebdd331974b728f260b4660c3cfbbd3c48746c6b8aecac537a45.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade9e6ec7cbf02acb0a6ef9d604b2bb3d7670e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
