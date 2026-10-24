# AutomorphicRepresentationAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e779a2ae0485e674b14ee0f4952599e653a81fdabf994eded04f82bae9a98d05",
  "kind": "structure",
  "lexical_name": "AutomorphicRepresentationAuthority",
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
  "slug": "automorphicrepresentationauthority--ed8e881c163e5d9c83d3cae3",
  "source": {
    "blob": "d40f49b04cef9ad3d2f34e558ea30f946663bfd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AutomorphicEulerProduct/Variant60d126266eda99c440b1782256cb8bfd456afcbdbfb32778a14a29555ae64f6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed8e881c163e5d9c83d3cae304d3731a11bc8150f9f66312e6864b3c7a12dd72",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AutomorphicEulerProduct/Variant60d126266eda99c440b1782256cb8bfd456afcbdbfb32778a14a29555ae64f6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e779a2ae0485e674b14ee0f4952599e653a81fdabf994eded04f82bae9a98d05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AutomorphicRepresentationAuthority where
  representation : AutomorphicRepresentationSymbol
  requirements : AutomorphicAnalyticRequirements

  automorphySound : Prop
  automorphyProof : automorphySound

  cuspidalitySound : Prop
  cuspidalityProof :
    requirements.requiresCuspidality = true → cuspidalitySound

  unitaritySound : Prop
  unitarityProof :
    requirements.requiresUnitarity = true → unitaritySound

  temperednessSound : Prop
  temperednessProof :
    requirements.requiresTemperedness = true → temperednessSound

/-- Authority for Euler product convergence of an automorphic Euler product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AutomorphicEulerProduct/Variant60d126266eda99c440b1782256cb8bfd456afcbdbfb32778a14a29555ae64f6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AutomorphicEulerProduct/Variant60d126266eda99c440b1782256cb8bfd456afcbdbfb32778a14a29555ae64f6a.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40f49b04cef9ad3d2f34e558ea30f946663bfd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
