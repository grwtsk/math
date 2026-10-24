# expDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d69fe93dcdacb4dc96c6336a41e2e929fb1d68d1d2c7422e4eb9e0325aab9e30",
  "kind": "def",
  "lexical_name": "expDegree",
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
  "slug": "expdegree--e21050aebe603ec307db81bf",
  "source": {
    "blob": "ef6f80b8b8727984ae25288b9ad91c40d5c13950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 159,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e21050aebe603ec307db81bf072bcfdb1af59622c17473aaaacc5d9e92255d89",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d69fe93dcdacb4dc96c6336a41e2e929fb1d68d1d2c7422e4eb9e0325aab9e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def expDegree (n : ℕ) : ℕ :=
  (n ^ 2 - if Even n then 4 else 1) / 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef6f80b8b8727984ae25288b9ad91c40d5c13950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
