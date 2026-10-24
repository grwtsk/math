# primitivePolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9d0330318f8fa58912c88c4ab3f0beb56431559430d7081fdca921226dadb7f",
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
  "slug": "primitivepolynomial--70989ce43ab84f5b0bc2136f",
  "source": {
    "blob": "b66316eb5f48ca19a33a47bc8b2895bf311b9e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 16,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70989ce43ab84f5b0bc2136f0b741b35580466f818e06bba6e8c9350436e9831",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9d0330318f8fa58912c88c4ab3f0beb56431559430d7081fdca921226dadb7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitivePolynomial (t : ℂ) : ℂ[X] :=
  (1) * C (t ^ 8) * ((1) * X ^ 0 + (-4) * X ^ 2 + (6) * X ^ 4 + (-4) * X ^ 6 + (1) * X ^ 8) +
  (-1) * C (t ^ 7) * ((-8) * X ^ 1 + (24) * X ^ 3 + (-24) * X ^ 5 + (8) * X ^ 7) +
  (1) * C (t ^ 6) * ((-8) * X ^ 0 + (72) * X ^ 2 + (-120) * X ^ 4 + (56) * X ^ 6) +
  (-1) * C (t ^ 5) * ((144) * X ^ 1 + (-480) * X ^ 3 + (336) * X ^ 5) +
  (1) * C (t ^ 4) * ((144) * X ^ 0 + (-1440) * X ^ 2 + (1680) * X ^ 4) +
  (-1) * C (t ^ 3) * ((-2880) * X ^ 1 + (6720) * X ^ 3) +
  (1) * C (t ^ 2) * ((-2880) * X ^ 0 + (20160) * X ^ 2) +
  (-1) * C (t ^ 1) * ((40320) * X ^ 1) +
  (1) * C (t ^ 0) * ((40320) * X ^ 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b66316eb5f48ca19a33a47bc8b2895bf311b9e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
