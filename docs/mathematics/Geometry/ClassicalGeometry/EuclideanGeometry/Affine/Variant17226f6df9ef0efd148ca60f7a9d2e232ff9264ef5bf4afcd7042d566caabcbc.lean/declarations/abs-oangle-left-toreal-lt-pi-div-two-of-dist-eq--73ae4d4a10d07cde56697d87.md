# abs_oangle_left_toReal_lt_pi_div_two_of_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:652a80a3-09b8-5e11-a2c6-b648a9b6edf6",
  "kind": "theorem",
  "lexical_name": "abs_oangle_left_toReal_lt_pi_div_two_of_dist_eq",
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
  "slug": "abs-oangle-left-toreal-lt-pi-div-two-of-dist-eq--73ae4d4a10d07cde56697d87",
  "source": {
    "blob": "865abc9f8f6a0a7473995d10d0a560913e9f4621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 302,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ae4d4a10d07cde56697d8722630f04ffb0cec4c6d6ceb2ba24ec252cca06c7",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:652a80a3-09b8-5e11-a2c6-b648a9b6edf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_oangle_left_toReal_lt_pi_div_two_of_dist_eq {p₁ p₂ p₃ : P}
    (h : dist p₁ p₂ = dist p₁ p₃) : |(∡ p₂ p₃ p₁).toReal| < π / 2 :=
  oangle_eq_oangle_of_dist_eq h ▸ abs_oangle_right_toReal_lt_pi_div_two_of_dist_eq h

/-- The cosine of the oriented angle at `p` between two points not equal to `p` equals that of the
unoriented angle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865abc9f8f6a0a7473995d10d0a560913e9f4621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
