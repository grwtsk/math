# LinearOrderedAddCommMonoidWithTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b33a37dc1e116817eb11072f8a668d7b3e64e8e0190594f8562cf8387cd83ca",
  "kind": "class",
  "lexical_name": "LinearOrderedAddCommMonoidWithTop",
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
  "slug": "linearorderedaddcommmonoidwithtop--cc56057f9a90e2d5e65763ac",
  "source": {
    "blob": "af93db03b9b9c1ee91bbc280fbc5ee63b70fc904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 30,
    "path": "GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc56057f9a90e2d5e65763ac9ca06aadac55d48abbe02220ca6622073fef81c9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b33a37dc1e116817eb11072f8a668d7b3e64e8e0190594f8562cf8387cd83ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LinearOrderedAddCommMonoidWithTop (α : Type*) extends
    AddCommMonoid α, LinearOrder α, IsOrderedAddMonoid α, OrderTop α where
  /-- In a `LinearOrderedAddCommMonoidWithTop`, the `⊤` element is invariant under addition. -/
  protected top_add' : ∀ x : α, ⊤ + x = ⊤

/-- A linearly ordered commutative group with an additively absorbing `⊤` element.
  Instances should include number systems with an infinite element adjoined. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af93db03b9b9c1ee91bbc280fbc5ee63b70fc904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
