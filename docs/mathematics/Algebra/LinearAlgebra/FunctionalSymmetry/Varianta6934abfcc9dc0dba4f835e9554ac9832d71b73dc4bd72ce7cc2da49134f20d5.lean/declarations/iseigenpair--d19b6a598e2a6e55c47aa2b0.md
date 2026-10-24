# IsEigenpair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90aaaaa6f7bc9e5223467a1f5e2c332ab6397b3c1de9a0e40ade371a46d15057",
  "kind": "def",
  "lexical_name": "IsEigenpair",
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
  "slug": "iseigenpair--d19b6a598e2a6e55c47aa2b0",
  "source": {
    "blob": "ae412bff0d253f651128e6d2fd747b85f3b8e8ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d19b6a598e2a6e55c47aa2b08621a01a9a12d5963c3c03dfc122e4dc6f5d9476",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90aaaaa6f7bc9e5223467a1f5e2c332ab6397b3c1de9a0e40ade371a46d15057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsEigenpair
    {Vector : Type}
    [AddCommGroup Vector] [Module ℝ Vector]
    (operator : Vector →ₗ[ℝ] Vector)
    (eigenvalue : ℝ)
    (vector : Vector) : Prop :=
  operator vector = eigenvalue • vector

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae412bff0d253f651128e6d2fd747b85f3b8e8ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
