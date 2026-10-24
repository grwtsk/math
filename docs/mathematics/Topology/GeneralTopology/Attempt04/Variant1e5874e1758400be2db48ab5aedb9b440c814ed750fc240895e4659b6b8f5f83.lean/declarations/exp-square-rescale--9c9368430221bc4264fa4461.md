# exp_square_rescale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4886add4-66c5-8dea-59cf-952f4dd8201f",
  "kind": "theorem",
  "lexical_name": "exp_square_rescale",
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
  "slug": "exp-square-rescale--9c9368430221bc4264fa4461",
  "source": {
    "blob": "31eb6babfcb7129f499b527f66be0afafd4116a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9368430221bc4264fa44610c63d4fc975a4016ad7300a56934e73a6272bf4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4886add4-66c5-8dea-59cf-952f4dd8201f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_square_rescale (x u v : ℝ) :
    Real.exp (-2*x)*(Real.exp x*u-Real.exp (-x)*v)^2 =
      (u-Real.exp (-2*x)*v)^2 := by
  have he : Real.exp (-2*x) = Real.exp (-x)^2 := by
    rw [sq,← Real.exp_add]; congr 1; ring
  have hp : Real.exp (-x)*Real.exp x=1 := by rw [← Real.exp_add,neg_add_cancel,Real.exp_zero]
  rw [he,← mul_pow, mul_sub, mul_assoc, hp,one_mul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31eb6babfcb7129f499b527f66be0afafd4116a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
