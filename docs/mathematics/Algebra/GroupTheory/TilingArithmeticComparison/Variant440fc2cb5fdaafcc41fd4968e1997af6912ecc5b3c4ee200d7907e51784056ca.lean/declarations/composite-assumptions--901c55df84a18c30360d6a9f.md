# composite_assumptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3697197-a18e-b0ca-3f63-aebc1cf49b26",
  "kind": "theorem",
  "lexical_name": "composite_assumptions",
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
  "slug": "composite-assumptions--901c55df84a18c30360d6a9f",
  "source": {
    "blob": "469722554822223ecb508922a9562473daa9d008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 248,
    "path": "GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:901c55df84a18c30360d6a9f43f45da3c83493f640504a2cb01a44888e479360",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3697197-a18e-b0ca-3f63-aebc1cf49b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem composite_assumptions :
    T.composite.Assumptions =
      ((((T.Contractible ∧ T.Free ∧ T.Proper) ∧
          T.assemblyDatum.IsomorphismClaim) ∧ True) ∧
        T.EtaleHypothesis) :=
  rfl

/-- The composite starts over integral coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469722554822223ecb508922a9562473daa9d008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
