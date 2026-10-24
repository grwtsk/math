# essSurjFullFunctorGaloisInsertion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f17f4c48133ea7bfa372bacd505abbac55408f738d86fb409ea53986ca1885b0",
  "kind": "def",
  "lexical_name": "essSurjFullFunctorGaloisInsertion",
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
  "slug": "esssurjfullfunctorgaloisinsertion--59248f86371c32e09dcbc2e1",
  "source": {
    "blob": "a9e78e4bfb2f2a023eeea52eb9c5537b7bd66f08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 352,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59248f86371c32e09dcbc2e11108317d69027480e8c9f8e67be502aa9e506ae9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f17f4c48133ea7bfa372bacd505abbac55408f738d86fb409ea53986ca1885b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def essSurjFullFunctorGaloisInsertion [F.EssSurj] [F.Full] (X : C) :
    GaloisInsertion (Sieve.functorPushforward F : Sieve X → Sieve (F.obj X))
      (Sieve.functorPullback F) := by
  apply (functor_galoisConnection F X).toGaloisInsertion
  intro S Y f hf
  refine ⟨_, F.preimage ((F.objObjPreimageIso Y).hom ≫ f), (F.objObjPreimageIso Y).inv, ?_⟩
  simpa using hf

/-- When `F` is fully faithful, the Galois connection is a Galois coinsertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant293c11790099f03995e497b9fba64922ab830ff279a76813157dae61c522bf3d.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e78e4bfb2f2a023eeea52eb9c5537b7bd66f08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
