# actualCoefficientRows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a37bcef8d677b480e80e65f21c66cd5ea963d95b2eba5952e3d778e9de61640e",
  "kind": "def",
  "lexical_name": "actualCoefficientRows",
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
  "slug": "actualcoefficientrows--cf7a1f75cc177d8edafca23d",
  "source": {
    "blob": "95a748fd75a1a5e58b7481b229cf35fce6c072ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01Source/Variant4488e73039ee07968c63b41a78c6b258f1f2022158be615cead5d50436ec8342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf7a1f75cc177d8edafca23dbd0b3f7366b101877ac2ae6d9f05ccc2433fef46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt01Source/Variant4488e73039ee07968c63b41a78c6b258f1f2022158be615cead5d50436ec8342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a37bcef8d677b480e80e65f21c66cd5ea963d95b2eba5952e3d778e9de61640e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCoefficientRows (A : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), correlationCoefficient A n *
    (sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n)) +
  (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), derivativeCoefficient A n *
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) / Real.sqrt n))

/-- Actual independently defined main reindexes without replacing J0/J1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt01Source/Variant4488e73039ee07968c63b41a78c6b258f1f2022158be615cead5d50436ec8342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01Source/Variant4488e73039ee07968c63b41a78c6b258f1f2022158be615cead5d50436ec8342.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a748fd75a1a5e58b7481b229cf35fce6c072ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
