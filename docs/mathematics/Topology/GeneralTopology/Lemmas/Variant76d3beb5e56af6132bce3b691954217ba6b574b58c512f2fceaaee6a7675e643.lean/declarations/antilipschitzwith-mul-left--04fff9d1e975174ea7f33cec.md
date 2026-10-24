# antilipschitzWith_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c9a2657-1f80-bfe4-2d26-4097adcd533a",
  "kind": "lemma",
  "lexical_name": "antilipschitzWith_mul_left",
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
  "slug": "antilipschitzwith-mul-left--04fff9d1e975174ea7f33cec",
  "source": {
    "blob": "d72c81ef81f964456d81cafb4ee8380437a75c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 230,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04fff9d1e975174ea7f33cec808820894b662effb876db1c8ba9d09c03f2c4dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c9a2657-1f80-bfe4-2d26-4097adcd533a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma antilipschitzWith_mul_left {a : α} (ha : a ≠ 0) : AntilipschitzWith (‖a‖₊⁻¹) (a * ·) :=
  AntilipschitzWith.of_le_mul_dist fun _ _ ↦ by simp [dist_eq_norm, ← mul_sub, ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d72c81ef81f964456d81cafb4ee8380437a75c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
