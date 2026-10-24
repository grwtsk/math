# accounted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d53ee852-9fc1-125a-a162-9a5473fc54c1",
  "kind": "theorem",
  "lexical_name": "accounted",
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
  "slug": "accounted--b7b3e02b4817ddfacb392cbc",
  "source": {
    "blob": "872a027898b121f3b9a2cf102d23620950de3f79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 308,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coordination/Varianta879d25dc1135b44325839ad0bda4391bb5c41b4a7352561e6e82e598fede17c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b3e02b4817ddfacb392cbc1e58ab4a238c66bfd38298be386cb45eb259c37b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coordination/Varianta879d25dc1135b44325839ad0bda4391bb5c41b4a7352561e6e82e598fede17c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d53ee852-9fc1-125a-a162-9a5473fc54c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem accounted (accounting : DiscrepancyDimensionAccounting)
    (dimension : DiscrepancyDimension) :
    dimension ∈ accounting.evaluated ∨
      dimension ∈ accounting.notEvaluated := by
  have membership :
      dimension ∈ accounting.evaluated ∪ accounting.notEvaluated := by
    rw [accounting.exhaustive]
    exact DiscrepancyDimension.mem_all dimension
  simpa only [Finset.mem_union] using membership

/-- No dimension can be both evaluated and not evaluated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coordination/Varianta879d25dc1135b44325839ad0bda4391bb5c41b4a7352561e6e82e598fede17c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coordination/Varianta879d25dc1135b44325839ad0bda4391bb5c41b4a7352561e6e82e598fede17c.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872a027898b121f3b9a2cf102d23620950de3f79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
