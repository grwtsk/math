# heightCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24910e211c329cbcd79345228cb1178de73730b12fda03b24f4dca93ca58fe9d",
  "kind": "def",
  "lexical_name": "heightCoefficient",
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
  "slug": "heightcoefficient--3fc675ce0702da8a6474561e",
  "source": {
    "blob": "8ce55e5fcc6da19d4e8fd1de4bddab5061dea963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fc675ce0702da8a6474561e32768bfb492652f1877831527f51c3f078b5d166",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24910e211c329cbcd79345228cb1178de73730b12fda03b24f4dca93ca58fe9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def heightCoefficient (A : ℝ) : ℝ :=
  rightLineMajorant 2 * (204288 ^ 2 * 10 / (4096 / 109395 : ℝ)) *
    Real.exp (3 * A) / A ^ 9

/-- The initial c = 2 tail constant in the literal paper convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce55e5fcc6da19d4e8fd1de4bddab5061dea963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
