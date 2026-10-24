# KummerDescentData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7382236cfe89b98f1af97ccce2679cde1875c8a0dfc62c9997e3f53d571bef6d",
  "kind": "structure",
  "lexical_name": "KummerDescentData",
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
  "slug": "kummerdescentdata--65e10ab1c48016ba8d9454cb",
  "source": {
    "blob": "416768821aa54767a123cfa871d4c9afd63099de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 232,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65e10ab1c48016ba8d9454cbc9518617831f274c74a8586b936287fb82f9d6ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7382236cfe89b98f1af97ccce2679cde1875c8a0dfc62c9997e3f53d571bef6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure KummerDescentData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (n : Nat)
    (P : GaloisCohomology.FiniteSelmerProblem.{u, u, u})
    (SK : FiniteKummerSelmerData P) where
  multiplicationByLevel :
    Point C.E → Point C.E
  multiplicationByLevelMatchesN : Prop
  multiplicationByLevelMatchesNCertified :
    multiplicationByLevelMatchesN
  quotientClass :
    Point C.E → SK.globalKummer.Domain
  quotientByMultiplicationIdentified : Prop
  quotientByMultiplicationIdentifiedCertified :
    quotientByMultiplicationIdentified
  kummerClass :
    SK.globalKummer.Domain →
      GaloisCohomology.FiniteH1 P.G P.A P.ρG
  kummerClass_eq_globalKummer :
    ∀ x, kummerClass x = SK.globalKummer.toH1 x
  kummerKernelIsMultiplicationImage : Prop
  kummerKernelIsMultiplicationImageCertified :
    kummerKernelIsMultiplicationImage
  locallyTrivialObstruction :
    GaloisCohomology.FiniteH1 P.G P.A P.ρG → Prop
  locallyTrivialObstructionMatchesSelmerKernel : Prop
  locallyTrivialObstructionMatchesSelmerKernelCertified :
    locallyTrivialObstructionMatchesSelmerKernel
  boundary : List String

/--
Constructed injection of the finite Mordell-Weil quotient domain into the
constructed Selmer subgroup.

This replaces the former bare injection gate.  The source is the domain of the
finite abstract global Kummer map, and the target is the already-built Selmer
subgroup attached to the finite `H1` restriction problem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416768821aa54767a123cfa871d4c9afd63099de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
