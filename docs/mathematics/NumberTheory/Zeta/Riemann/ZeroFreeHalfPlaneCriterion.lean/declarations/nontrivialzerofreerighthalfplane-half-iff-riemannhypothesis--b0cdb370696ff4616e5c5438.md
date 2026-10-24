# nontrivialZeroFreeRightHalfPlane_half_iff_riemannHypothesis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ce84e62-f061-dd89-b0a6-00e2b2a3a534",
  "kind": "theorem",
  "lexical_name": "nontrivialZeroFreeRightHalfPlane_half_iff_riemannHypothesis",
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
  "slug": "nontrivialzerofreerighthalfplane-half-iff-riemannhypothesis--b0cdb370696ff4616e5c5438",
  "source": {
    "blob": "a8de87ade80f228be67ece156957382ea02d601b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0cdb370696ff4616e5c54381090e11727f29d9e5a31150aef34826d8492177a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ce84e62-f061-dd89-b0a6-00e2b2a3a534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivialZeroFreeRightHalfPlane_half_iff_riemannHypothesis :
    NontrivialZeroFreeRightHalfPlane (1 / 2 : ℝ) ↔
      _root_.RiemannHypothesis := by
  constructor
  · exact riemannHypothesis_of_nontrivialZeroFreeRightHalfPlane le_rfl
  · exact nontrivialZeroFreeRightHalfPlane_of_rh le_rfl

/-- The new criterion terminates in the repository's independently fixed target
statement, not a replacement proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8de87ade80f228be67ece156957382ea02d601b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
