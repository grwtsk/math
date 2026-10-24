# isUnit_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41a84673-3b4d-0064-7bc3-c666e95470af",
  "kind": "lemma",
  "lexical_name": "isUnit_map",
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
  "slug": "isunit-map--32cb9d53d67a0e3779d5ba0f",
  "source": {
    "blob": "8f5baec033bd6085ce14502a05445fbedc803f54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 490,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32cb9d53d67a0e3779d5ba0f43f6370d65ac0131db09088054a6d5ff7399daf8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41a84673-3b4d-0064-7bc3-c666e95470af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma isUnit_map (k : Type*) [Field k] [CharZero k] :
    IsUnit <| M.map (Int.cast : ℤ → k) := by
  suffices IsUnit <| (Int.castRingHom k).mapMatrix M by simpa
  rw [Matrix.isUnit_iff_isUnit_det, ← RingHom.map_det]
  simpa using hM.det_pos.ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f5baec033bd6085ce14502a05445fbedc803f54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
