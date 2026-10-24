# CharacterEigenlineRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e09718c086b507d79b981a9c103a85e11e74fe5ea7ea4fba8b60988aa1f1423",
  "kind": "structure",
  "lexical_name": "CharacterEigenlineRealization",
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
  "slug": "charactereigenlinerealization--f2b78244d7243fcd6a5ea532",
  "source": {
    "blob": "6498cd959aba4513fab921e1e8fe664ddcf33ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 57,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2b78244d7243fcd6a5ea53293f1e2f85a42c524751cd5c5619741c8bd4328b9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e09718c086b507d79b981a9c103a85e11e74fe5ea7ea4fba8b60988aa1f1423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CharacterEigenlineRealization
    (A C V G : Type*)
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    [FiniteDimensional C V]
    (conj : G → G)
    (v : OddSignRow G conj) where
  action : A →+* Module.End C V
  character : G → A →+* C
  line_finrank_one :
    ∀ g, Module.finrank C (characterEigenspace action (character g)) = 1
  line_nonzero :
    ∀ g, ∃ x : V,
      x ∈ characterEigenspace action (character g) ∧ x ≠ 0
  typeAt : G → WeightOneHodgeType
  typeAt_eq : ∀ g, typeAt g = typeOfSign (v.value g)

/-- A complete internal decomposition by the selected character eigenspaces.

This is the precise linear-algebra shape of the manuscript's embedding-line
decomposition after scalar extension. It still does not construct the algebra
action from a CM field or prove scalar-conjugation transport. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6498cd959aba4513fab921e1e8fe664ddcf33ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
