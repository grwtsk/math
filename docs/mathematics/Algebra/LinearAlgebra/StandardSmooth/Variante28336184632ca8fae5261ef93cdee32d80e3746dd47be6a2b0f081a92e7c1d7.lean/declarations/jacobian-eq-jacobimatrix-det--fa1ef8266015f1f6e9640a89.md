# jacobian_eq_jacobiMatrix_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c161010-5f43-74c3-fdf1-25efa2b9b25a",
  "kind": "lemma",
  "lexical_name": "jacobian_eq_jacobiMatrix_det",
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
  "slug": "jacobian-eq-jacobimatrix-det--fa1ef8266015f1f6e9640a89",
  "source": {
    "blob": "759c6dc115d6ba670e176614460f6fcd371b1c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 173,
    "path": "GRWTSK/Algebra/LinearAlgebra/StandardSmooth/Variante28336184632ca8fae5261ef93cdee32d80e3746dd47be6a2b0f081a92e7c1d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa1ef8266015f1f6e9640a89d498b2fe2ac522406f5e3c6429f95f3b2dd8aabb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StandardSmooth/Variante28336184632ca8fae5261ef93cdee32d80e3746dd47be6a2b0f081a92e7c1d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c161010-5f43-74c3-fdf1-25efa2b9b25a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobian_eq_jacobiMatrix_det : P.jacobian = algebraMap P.Ring S P.jacobiMatrix.det := by
  simp [jacobiMatrix, jacobian]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StandardSmooth/Variante28336184632ca8fae5261ef93cdee32d80e3746dd47be6a2b0f081a92e7c1d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StandardSmooth/Variante28336184632ca8fae5261ef93cdee32d80e3746dd47be6a2b0f081a92e7c1d7.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759c6dc115d6ba670e176614460f6fcd371b1c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
