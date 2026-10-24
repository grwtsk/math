# physicalCurvaturePolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd418b96b75e898b1c842fe65b3c49aa1313c1d7cee455728f716bbaca9eb2f5",
  "kind": "def",
  "lexical_name": "physicalCurvaturePolynomial",
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
  "slug": "physicalcurvaturepolynomial--b06d7de7879802f6ceac3bd5",
  "source": {
    "blob": "ab99ee353b0a1a28ac1f31e91bf952d31984519c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant32c1d155c4d3e63cd3746f989a74353fab3a11ef684a7c25b13410d2e95ad608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b06d7de7879802f6ceac3bd5319528c938c67c9a1c6072959e74ed3450187d63",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant32c1d155c4d3e63cd3746f989a74353fab3a11ef684a7c25b13410d2e95ad608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd418b96b75e898b1c842fe65b3c49aa1313c1d7cee455728f716bbaca9eb2f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def physicalCurvaturePolynomial (r y : ℝ) : ℝ :=
  (24576) +
    (-6144) * y +
    ((-1536 / 5)) * y ^ 2 +
    ((512 / 5)) * y ^ 3 +
    ((-64 / 35)) * y ^ 4 +
    ((-8 / 35)) * y ^ 5 +
    ((2 / 315)) * y ^ 6 +
    (-122880) * r * y +
    (24576) * r * y ^ 2 +
    (1024) * r * y ^ 3 +
    ((-2048 / 7)) * r * y ^ 4 +
    ((32 / 7)) * r * y ^ 5 +
    ((32 / 63)) * r * y ^ 6 +
    ((-4 / 315)) * r * y ^ 7 +
    (233472) * r ^ 2 * y ^ 2 +
    (-38912) * r ^ 2 * y ^ 3 +
    ((-9728 / 7)) * r ^ 2 * y ^ 4 +
    ((2432 / 7)) * r ^ 2 * y ^ 5 +
    ((-304 / 63)) * r ^ 2 * y ^ 6 +
    ((-152 / 315)) * r ^ 2 * y ^ 7 +
    ((38 / 3465)) * r ^ 2 * y ^ 8 +
    (-227328) * r ^ 3 * y ^ 3 +
    ((227328 / 7)) * r ^ 3 * y ^ 4 +
    ((7104 / 7)) * r ^ 3 * y ^ 5 +
    ((-4736 / 21)) * r ^ 3 * y ^ 6 +
    ((296 / 105)) * r ^ 3 * y ^ 7 +
    ((296 / 1155)) * r ^ 3 * y ^ 8 +
    ((-37 / 6930)) * r ^ 3 * y ^ 9 +
    ((887808 / 7)) * r ^ 4 * y ^ 4 +
    ((-110976 / 7)) * r ^ 4 * y ^ 5 +
    ((-9248 / 21)) * r ^ 4 * y ^ 6 +
    ((9248 / 105)) * r ^ 4 * y ^ 7 +
    ((-1156 / 1155)) * r ^ 4 * y ^ 8 +
    ((-289 / 3465)) * r ^ 4 * y ^ 9 +
    ((289 / 180180)) * r ^ 4 * y ^ 10 +
    (-42240) * r ^ 5 * y ^ 5 +
    ((14080 / 3)) * r ^ 5 * y ^ 6 +
    ((352 / 3)) * r ^ 5 * y ^ 7 +
    ((-64 / 3)) * r ^ 5 * y ^ 8 +
    ((2 / 9)) * r ^ 5 * y ^ 9 +
    ((2 / 117)) * r ^ 5 * y ^ 10 +
    ((-1 / 3276)) * r ^ 5 * y ^ 11 +
    (8320) * r ^ 6 * y ^ 6 +
    (-832) * r ^ 6 * y ^ 7 +
    ((-208 / 11)) * r ^ 6 * y ^ 8 +
    ((104 / 33)) * r ^ 6 * y ^ 9 +
    ((-1 / 33)) * r ^ 6 * y ^ 10 +
    ((-1 / 462)) * r ^ 6 * y ^ 11 +
    ((1 / 27720)) * r ^ 6 * y ^ 12 +
    (-896) * r ^ 7 * y ^ 7 +
    ((896 / 11)) * r ^ 7 * y ^ 8 +
    ((56 / 33)) * r ^ 7 * y ^ 9 +
    ((-112 / 429)) * r ^ 7 * y ^ 10 +
    ((1 / 429)) * r ^ 7 * y ^ 11 +
    ((1 / 6435)) * r ^ 7 * y ^ 12 +
    ((-1 / 411840)) * r ^ 7 * y ^ 13 +
    ((448 / 11)) * r ^ 8 * y ^ 8 +
    ((-112 / 33)) * r ^ 8 * y ^ 9 +
    ((-28 / 429)) * r ^ 8 * y ^ 10 +
    ((4 / 429)) * r ^ 8 * y ^ 11 +
    ((-1 / 12870)) * r ^ 8 * y ^ 12 +
    ((-1 / 205920)) * r ^ 8 * y ^ 13 +
    ((1 / 14002560)) * r ^ 8 * y ^ 14

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant32c1d155c4d3e63cd3746f989a74353fab3a11ef684a7c25b13410d2e95ad608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant32c1d155c4d3e63cd3746f989a74353fab3a11ef684a7c25b13410d2e95ad608.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab99ee353b0a1a28ac1f31e91bf952d31984519c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
