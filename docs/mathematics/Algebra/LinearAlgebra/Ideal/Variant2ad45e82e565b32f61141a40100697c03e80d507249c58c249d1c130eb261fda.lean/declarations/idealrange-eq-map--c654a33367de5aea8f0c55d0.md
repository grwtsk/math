# idealRange_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:227e915d-c55f-f66a-2ae2-4f8da8551f72",
  "kind": "theorem",
  "lexical_name": "idealRange_eq_map",
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
  "slug": "idealrange-eq-map--c654a33367de5aea8f0c55d0",
  "source": {
    "blob": "66f233a06d3bee55297e90179f85e1272bd0a990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 271,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c654a33367de5aea8f0c55d092188e146ac72b05b3229573d8251eb8ef0c0c4c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:227e915d-c55f-f66a-2ae2-4f8da8551f72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem idealRange_eq_map : f.idealRange = LieIdeal.map f ⊤ := by
  ext
  simp only [idealRange, range_eq_map]
  rfl

/-- The condition that the range of a morphism of Lie algebras is an ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f233a06d3bee55297e90179f85e1272bd0a990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
