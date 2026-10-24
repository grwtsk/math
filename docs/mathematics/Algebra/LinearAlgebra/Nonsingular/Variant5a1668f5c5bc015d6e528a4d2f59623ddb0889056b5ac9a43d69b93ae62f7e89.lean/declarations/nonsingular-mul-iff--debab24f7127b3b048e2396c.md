# nonsingular_mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:775e2562-dfff-9b92-005c-469cc542451d",
  "kind": "lemma",
  "lexical_name": "nonsingular_mul_iff",
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
  "slug": "nonsingular-mul-iff--debab24f7127b3b048e2396c",
  "source": {
    "blob": "f02e5ac5cbb91d9f5b51497e75596bbc829e03a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:debab24f7127b3b048e2396c6f110bdd3aa9b6e01b52b963d7efba20fed56931",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:775e2562-dfff-9b92-005c-469cc542451d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonsingular_mul_iff {A B : Matrix n n R} :
    (A * B).Nonsingular ↔ A.Nonsingular ∧ B.Nonsingular where
  mp h := ⟨isRightRegular_iff_nonsingular.mp <| .of_mul <| isRightRegular_iff_nonsingular.mpr h,
    isLeftRegular_iff_nonsingular.mp <| .of_mul <| isLeftRegular_iff_nonsingular.mpr h⟩
  mpr h := h.1.mul h.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f02e5ac5cbb91d9f5b51497e75596bbc829e03a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
