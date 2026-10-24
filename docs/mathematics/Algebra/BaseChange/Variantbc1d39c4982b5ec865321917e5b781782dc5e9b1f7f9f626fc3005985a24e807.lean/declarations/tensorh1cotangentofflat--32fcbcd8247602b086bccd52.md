# tensorH1CotangentOfFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80f9449d6e563fb98b124389af9b0b8f2fbfa240d8d97087fc49bee46e794d7b",
  "kind": "def",
  "lexical_name": "tensorH1CotangentOfFlat",
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
  "slug": "tensorh1cotangentofflat--32fcbcd8247602b086bccd52",
  "source": {
    "blob": "d926efa904cb03156f0b95a8bc966035081007e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 199,
    "path": "GRWTSK/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32fcbcd8247602b086bccd52a74096009e08bb4f8c9ad9ea283873790ab49f90",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80f9449d6e563fb98b124389af9b0b8f2fbfa240d8d97087fc49bee46e794d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tensorH1CotangentOfFlat (T : Type*) [CommRing T] [Algebra R T] [Module.Flat R T] :
    T ⊗[R] H1Cotangent R S ≃ₗ[T] H1Cotangent T (T ⊗[R] S) :=
  (Generators.self R S).toExtension.tensorH1CotangentOfFlat T ≪≫ₗ
    (Extension.H1Cotangent.equiv
      ((Generators.self R S).baseChangeFromBaseChange T)
      ((Generators.self R S).baseChangeToBaseChange T)).restrictScalars T ≪≫ₗ
    ((Generators.self R S).baseChange (T := T)).equivH1Cotangent.restrictScalars T

attribute [local instance] TensorProduct.rightAlgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d926efa904cb03156f0b95a8bc966035081007e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
