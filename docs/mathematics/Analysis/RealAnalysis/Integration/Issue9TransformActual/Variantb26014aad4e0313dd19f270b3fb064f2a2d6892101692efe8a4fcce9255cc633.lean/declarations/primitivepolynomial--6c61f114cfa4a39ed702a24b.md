# primitivePolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a526b4d9eea90016509aca774f32e53da0659c0e6bd8c030bea012cc072c1cc",
  "kind": "def",
  "lexical_name": "primitivePolynomial",
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
  "slug": "primitivepolynomial--6c61f114cfa4a39ed702a24b",
  "source": {
    "blob": "4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 15,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c61f114cfa4a39ed702a24b77f385f76bc30052acffedcf0ae097dc040ba192",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a526b4d9eea90016509aca774f32e53da0659c0e6bd8c030bea012cc072c1cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitivePolynomial (A z : ℂ) : ℂ[X] :=
  C ((1) * z ^ 8) * (C ((1) * A ^ 8) * X ^ 0 + C ((-4) * A ^ 6) * X ^ 2 + C ((6) * A ^ 4) * X ^ 4 + C ((-4) * A ^ 2) * X ^ 6 + C ((1) * A ^ 0) * X ^ 8) +
  C ((-1) * z ^ 7) * (C ((-8) * A ^ 6) * X ^ 1 + C ((24) * A ^ 4) * X ^ 3 + C ((-24) * A ^ 2) * X ^ 5 + C ((8) * A ^ 0) * X ^ 7) +
  C ((1) * z ^ 6) * (C ((-8) * A ^ 6) * X ^ 0 + C ((72) * A ^ 4) * X ^ 2 + C ((-120) * A ^ 2) * X ^ 4 + C ((56) * A ^ 0) * X ^ 6) +
  C ((-1) * z ^ 5) * (C ((144) * A ^ 4) * X ^ 1 + C ((-480) * A ^ 2) * X ^ 3 + C ((336) * A ^ 0) * X ^ 5) +
  C ((1) * z ^ 4) * (C ((144) * A ^ 4) * X ^ 0 + C ((-1440) * A ^ 2) * X ^ 2 + C ((1680) * A ^ 0) * X ^ 4) +
  C ((-1) * z ^ 3) * (C ((-2880) * A ^ 2) * X ^ 1 + C ((6720) * A ^ 0) * X ^ 3) +
  C ((1) * z ^ 2) * (C ((-2880) * A ^ 2) * X ^ 0 + C ((20160) * A ^ 0) * X ^ 2) +
  C ((-1) * z ^ 1) * (C ((40320) * A ^ 0) * X ^ 1) +
  C ((1) * z ^ 0) * (C ((40320) * A ^ 0) * X ^ 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
