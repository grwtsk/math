# fintypeQuotientStabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ceab984a801574f21abdfa11d568f02e8ed37cc18ffed9b170989d7c7980d3a",
  "kind": "instance",
  "lexical_name": "fintypeQuotientStabilizer",
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
  "slug": "fintypequotientstabilizer--449ec6f4543682fa17b0bb8f",
  "source": {
    "blob": "017cc222f3ec68007cfddfcd22d10a4b99e689a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:449ec6f4543682fa17b0bb8f82113c964b470144c3d490b460eab676b07a43df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ceab984a801574f21abdfa11d568f02e8ed37cc18ffed9b170989d7c7980d3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private local instance fintypeQuotientStabilizer {X : Type*} [MulAction G X]
    [TopologicalSpace X] [ContinuousSMul G X] [DiscreteTopology X] (x : X) :
    Fintype (G ⧸ (MulAction.stabilizer (G) x)) :=
  fintypeQuotient ⟨MulAction.stabilizer (G) x, stabilizer_isOpen (G) x⟩

/-- If `X` is a finite discrete `G`-set, it can be written as the finite disjoint union
of quotients of the form `G ⧸ Uᵢ` for open subgroups `(Uᵢ)`. Note that this
is simply the decomposition into orbits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `017cc222f3ec68007cfddfcd22d10a4b99e689a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
