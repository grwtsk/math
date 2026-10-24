# Atom.claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ec670da966ba52e22934a02bf737a4d1632d1141d901b0052e0e178b606daf4",
  "kind": "def",
  "lexical_name": "Atom.claim",
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
  "slug": "atom-claim--143e9ac004d04ebd6907ffdb",
  "source": {
    "blob": "6e33111888b816694bc11e4f235688bf883dbd5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e/Variantc57ed9ff0106ae35c8257f309a892f60646466536f6143f0cfbec66d90a8e9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:143e9ac004d04ebd6907ffdb71686d8303b93f54050231df418a5063de62db70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e/Variantc57ed9ff0106ae35c8257f309a892f60646466536f6143f0cfbec66d90a8e9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ec670da966ba52e22934a02bf737a4d1632d1141d901b0052e0e178b606daf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.claim (ctx : Context) : Atom -> Prop
  | .replacementScopeDeclared => ctx.ReplacementScopeDeclared
  | .theoremInventoryDeclared => ∃ _T : ctx.AutomorphicTheorem, True
  | .finiteQWaveData => ∃ _M : ctx.FiniteQWaveModule, True
  | .transformationLaw =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasTransformationLaw M
  | .heckeAction => ∃ M : ctx.FiniteQWaveModule, ctx.HasHeckeTheory M
  | .heckeEigenrelation => ∃ M : ctx.FiniteQWaveModule, ctx.HasHeckeTheory M
  | .representationTheoreticObject =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasRepresentationTheory M
  | .lFunctionAnalyticProperties =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasLFunctionTheory M
  | .localGlobalCompatibility =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasLocalGlobalCompatibility M
  | .spectralDecomposition =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasRepresentationTheory M
  | .automorphyLiftingInterface =>
      ∃ M : ctx.FiniteQWaveModule, ctx.HasRepresentationTheory M
  | .theoremSubsumption =>
      ∀ T : ctx.AutomorphicTheorem,
        ctx.CoveredByFramework T -> ctx.ReprovedInsideFramework T
  | .finalAutomorphicReplacementClaim => finalClaim ctx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e/Variantc57ed9ff0106ae35c8257f309a892f60646466536f6143f0cfbec66d90a8e9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e/Variantc57ed9ff0106ae35c8257f309a892f60646466536f6143f0cfbec66d90a8e9a0.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e33111888b816694bc11e4f235688bf883dbd5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
