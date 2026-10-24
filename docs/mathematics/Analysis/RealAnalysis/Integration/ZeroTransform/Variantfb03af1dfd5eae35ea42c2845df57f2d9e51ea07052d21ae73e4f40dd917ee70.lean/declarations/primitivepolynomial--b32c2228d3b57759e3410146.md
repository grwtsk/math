# primitivePolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c35f31d68a4703e0cfe103c78179cdb9ae75980fe2904a0351ced41f842bd8b",
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
  "slug": "primitivepolynomial--b32c2228d3b57759e3410146",
  "source": {
    "blob": "5b01ceb99dcca3b98410b832b57e05abf3fff361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b32c2228d3b57759e341014657d7af91281ed55e81cc06af909d7ab08cf2966b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c35f31d68a4703e0cfe103c78179cdb9ae75980fe2904a0351ced41f842bd8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitivePolynomial (A z : ℂ) : ℂ[X] :=
  C ((1) * z ^ 8) * (C ((1) * A ^ 8) * X ^ 0 +
      C ((-4) * A ^ 6) * X ^ 2 +
      C ((6) * A ^ 4) * X ^ 4 +
      C ((-4) * A ^ 2) * X ^ 6 +
      C ((1) * A ^ 0) * X ^ 8) +
  C ((-1) * z ^ 7) * (C ((-8) * A ^ 6) * X ^ 1 +
      C ((24) * A ^ 4) * X ^ 3 +
      C ((-24) * A ^ 2) * X ^ 5 +
      C ((8) * A ^ 0) * X ^ 7) +
  C ((1) * z ^ 6) * (C ((-8) * A ^ 6) * X ^ 0 +
      C ((72) * A ^ 4) * X ^ 2 +
      C ((-120) * A ^ 2) * X ^ 4 +
      C ((56) * A ^ 0) * X ^ 6) +
  C ((-1) * z ^ 5) * (C ((144) * A ^ 4) * X ^ 1 +
      C ((-480) * A ^ 2) * X ^ 3 +
      C ((336) * A ^ 0) * X ^ 5) +
  C ((1) * z ^ 4) * (C ((144) * A ^ 4) * X ^ 0 +
      C ((-1440) * A ^ 2) * X ^ 2 +
      C ((1680) * A ^ 0) * X ^ 4) +
  C ((-1) * z ^ 3) * (C ((-2880) * A ^ 2) * X ^ 1 + C ((6720) * A ^ 0) * X ^ 3) +
  C ((1) * z ^ 2) * (C ((-2880) * A ^ 2) * X ^ 0 + C ((20160) * A ^ 0) * X ^ 2) +
  C ((-1) * z ^ 1) * (C ((40320) * A ^ 0) * X ^ 1) +
  C ((1) * z ^ 0) * (C ((40320) * A ^ 0) * X ^ 0)
/-- The polynomial derivative identity clears the ninth power without division. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b01ceb99dcca3b98410b832b57e05abf3fff361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
