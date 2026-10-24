# cubicalCertified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ad7477f2a528884b9a7ac83e2962b59889313553dd128a3a76c9d332937ab70",
  "kind": "def",
  "lexical_name": "cubicalCertified",
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
  "slug": "cubicalcertified--3f5be1f56e1935d449c38e8d",
  "source": {
    "blob": "345f0a7e2ef8b273809e7f431a29ade71833481c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 176,
    "path": "GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f5be1f56e1935d449c38e8dac4e9454a22fa2d50321b6d84544ef28a26d4f1d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ad7477f2a528884b9a7ac83e2962b59889313553dd128a3a76c9d332937ab70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cubicalCertified :
    Comparison.Certified
      (T.CubicalHomology T.degree)
      (T.EquivariantHomology T.degree) :=
  Comparison.Certified.ofConditional
    (T.cubicalSpec T.degree)
    Comparison.CoefficientContext.integral
    Comparison.CoefficientContext.integral
    (.theory `DAF.Integration.TilingArithmeticComparison.EquivariantTopology)
    (Comparison.IsBijective (T.cubicalSpec T.degree))
    (T.Contractible ∧ T.Free ∧ T.Proper)
    (fun h ↦ T.cubical_bijective h.1 h.2.1 h.2.2 T.degree)

/-- Assembly is defined, while bijectivity is conditional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345f0a7e2ef8b273809e7f431a29ade71833481c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
