# positive_count_congruence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd6d6413-5917-64c9-707f-7b7696350fb0",
  "kind": "theorem",
  "lexical_name": "positive_count_congruence",
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
  "slug": "positive-count-congruence--443cc76ea0e7858b54eb0b75",
  "source": {
    "blob": "133ab51a4118d680182f37bd2dba63c15b97491e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:443cc76ea0e7858b54eb0b75f943b1e7ef7dbcf3e61bdd107696c2eef42ebaae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd6d6413-5917-64c9-707f-7b7696350fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_count_congruence (M P : Matrix σ σ ℂ) (hM : M.IsHermitian)
    (hP : P.det ≠ 0) (hN : (Pᴴ * M * P).IsHermitian) :
    Fintype.card {i // 0 < hN.eigenvalues i} =
      Fintype.card {i // 0 < hM.eigenvalues i} := by
  have he : Equivalent (realForm (Pᴴ*M*P) hN) (realForm M hM) := by
    rw [realForm_congruence M P hM hP hN]
    exact ⟨(isometryEquivOfCompLinearEquiv (realForm M hM)
      (congruenceCoordinates P hP)).symm⟩
  have h := he.sigPos_eq
  rw [sigPos_realForm, sigPos_realForm] at h
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133ab51a4118d680182f37bd2dba63c15b97491e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
