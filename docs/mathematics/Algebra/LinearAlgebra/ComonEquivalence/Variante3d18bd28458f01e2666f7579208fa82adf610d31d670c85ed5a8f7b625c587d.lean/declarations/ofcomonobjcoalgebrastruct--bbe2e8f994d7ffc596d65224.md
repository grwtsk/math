# ofComonObjCoalgebraStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73a5f2accf6e84f340ec7ba4184a6a7cb29e2baa2f7f639379959a19a5345635",
  "kind": "instance",
  "lexical_name": "ofComonObjCoalgebraStruct",
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
  "slug": "ofcomonobjcoalgebrastruct--bbe2e8f994d7ffc596d65224",
  "source": {
    "blob": "0780c407a539751cd9033f46b2a5c21369fcd3e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe2e8f994d7ffc596d6522443b5e2da9867c22e0a053a99a85549ec7dcd03ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73a5f2accf6e84f340ec7ba4184a6a7cb29e2baa2f7f639379959a19a5345635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance ofComonObjCoalgebraStruct (X : Comon_ (ModuleCat R)) :
    CoalgebraStruct R X.X where
  comul := X.comul.hom
  counit := X.counit.hom

/-- A comonoid object in the category of `R`-modules has a natural `R`-coalgebra
structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0780c407a539751cd9033f46b2a5c21369fcd3e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
