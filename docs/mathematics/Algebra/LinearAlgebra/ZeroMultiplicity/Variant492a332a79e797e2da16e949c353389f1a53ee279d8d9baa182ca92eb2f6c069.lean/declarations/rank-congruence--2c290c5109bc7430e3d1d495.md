# rank_congruence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d923250-9d21-2083-0d40-ae64e5fe52c7",
  "kind": "theorem",
  "lexical_name": "rank_congruence",
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
  "slug": "rank-congruence--2c290c5109bc7430e3d1d495",
  "source": {
    "blob": "71c4ac37d0781ccaaa08877557eb3b0d8c40324a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c290c5109bc7430e3d1d49583b915ff2c60ad9cbdbbc14480161b7bce99ca41",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d923250-9d21-2083-0d40-ae64e5fe52c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_congruence (M P : Matrix n n ℂ) (hP : P.det ≠ 0) :
    (Pᴴ * M * P).rank = M.rank := by
  have hPs : Pᴴ.det ≠ 0 := by simpa using hP
  rw [Matrix.rank_mul_eq_left_of_det_ne_zero P (Pᴴ * M) hP,
    Matrix.rank_mul_eq_right_of_det_ne_zero Pᴴ M hPs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c4ac37d0781ccaaa08877557eb3b0d8c40324a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
