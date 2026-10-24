# PreservesOneHypercovers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14bb7d290868184356353b4e8fa70404407c9c73beca73e195f106d07f8f5ca4",
  "kind": "abbrev",
  "lexical_name": "PreservesOneHypercovers",
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
  "slug": "preservesonehypercovers--e953c995367f4b343f31c59e",
  "source": {
    "blob": "eea18af00829d62913c76ec7e77fce0cd4636e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e953c995367f4b343f31c59ead7553e91cb2d27c8df4d0e6f2349de938607dec",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14bb7d290868184356353b4e8fa70404407c9c73beca73e195f106d07f8f5ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev PreservesOneHypercovers :=
  ∀ {X : C} (E : GrothendieckTopology.OneHypercover.{w} J X), E.IsPreservedBy F K

/-- A functor `F` is continuous if the precomposition with `F.op` sends sheaves of `Type t`
to sheaves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eea18af00829d62913c76ec7e77fce0cd4636e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
