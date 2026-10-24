# KanComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75dcd878fe77129d296c48a4bc5fd70150021394feb1b483ad507b18b0f421ff",
  "kind": "abbrev",
  "lexical_name": "KanComplex",
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
  "slug": "kancomplex--9de73fca484fdc9d40d049ea",
  "source": {
    "blob": "797e1662dea07f26821815efc9ca8c36166e92a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 43,
    "path": "GRWTSK/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9de73fca484fdc9d40d049ea65f44f227bf5affa4f4c797097b5d2603c20965b",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75dcd878fe77129d296c48a4bc5fd70150021394feb1b483ad507b18b0f421ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev KanComplex (S : SSet.{u}) : Prop := HomotopicalAlgebra.IsFibrant S

/-- A Kan complex `S` satisfies the following horn-filling condition:
for every nonzero `n : ℕ` and `0 ≤ i ≤ n`,
every map of simplicial sets `σ₀ : Λ[n, i] → S` can be extended to a map `σ : Δ[n] → S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `797e1662dea07f26821815efc9ca8c36166e92a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
