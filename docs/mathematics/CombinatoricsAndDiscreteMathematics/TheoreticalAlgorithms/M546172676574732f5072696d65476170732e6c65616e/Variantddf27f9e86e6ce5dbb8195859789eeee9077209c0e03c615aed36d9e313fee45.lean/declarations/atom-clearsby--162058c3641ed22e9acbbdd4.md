# Atom.clearsBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b150a709e913777f750b341b79df2c7f01f679db75cb5978b76ffc10f90c6ea",
  "kind": "def",
  "lexical_name": "Atom.clearsBy",
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
  "slug": "atom-clearsby--162058c3641ed22e9acbbdd4",
  "source": {
    "blob": "6b21ddf259c616177e50c81aa377f215133bc6ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variantddf27f9e86e6ce5dbb8195859789eeee9077209c0e03c615aed36d9e313fee45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:162058c3641ed22e9acbbdd4cf0c5baf6f84b2d3557e45a1d96c174ab5a487a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variantddf27f9e86e6ce5dbb8195859789eeee9077209c0e03c615aed36d9e313fee45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b150a709e913777f750b341b79df2c7f01f679db75cb5978b76ffc10f90c6ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.clearsBy : Atom -> String
  | .finitePrimeWindow => "a finite prime-window certificate"
  | .candidateGapBound => "a proof that the candidate bound has the desired target meaning"
  | .improvementOverBenchmark => "a proof of the benchmark comparison"
  | .admissibleTuple => "a verified admissible tuple certificate"
  | .localObstructionRemoval => "a proof that all local obstructions are removed"
  | .distributionCertificate => "a proved distribution theorem at the required level"
  | .maynardWeightCertificate => "a verified Maynard weight construction"
  | .denseClusterScore => "a proof that the weight score is positive"
  | .parityBarrierFlag => "a theorem resolving the parity obstruction in this setting"
  | .levelOfDistributionEstimate => "a level-of-distribution theorem with explicit constants"
  | .uniformSieveErrorTerms => "uniform error bounds for all sufficiently large stages"
  | .positivityInequality => "a proof of the sieve positivity inequality"
  | .infiniteGoodWindows => "a theorem producing infinitely many good windows"
  | .asymptoticLiminfExtraction => "a transfer theorem from good windows to a liminf bound"
  | .finalImprovedGapBound => "a proof of the final improved gap-bound claim"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variantddf27f9e86e6ce5dbb8195859789eeee9077209c0e03c615aed36d9e313fee45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variantddf27f9e86e6ce5dbb8195859789eeee9077209c0e03c615aed36d9e313fee45.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b21ddf259c616177e50c81aa377f215133bc6ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
