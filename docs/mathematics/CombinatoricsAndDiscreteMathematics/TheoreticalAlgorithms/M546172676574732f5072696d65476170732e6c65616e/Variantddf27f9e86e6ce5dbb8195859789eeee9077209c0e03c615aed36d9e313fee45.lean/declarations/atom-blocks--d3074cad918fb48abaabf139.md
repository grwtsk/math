# Atom.blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7207497c596c50d5064a05d0cd1edb1f23ac73b60c3ba9b3da70a614b52cf22e",
  "kind": "def",
  "lexical_name": "Atom.blocks",
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
  "slug": "atom-blocks--d3074cad918fb48abaabf139",
  "source": {
    "blob": "6b21ddf259c616177e50c81aa377f215133bc6ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variantddf27f9e86e6ce5dbb8195859789eeee9077209c0e03c615aed36d9e313fee45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3074cad918fb48abaabf13954d63ea5d0417b577e5a6ee25692a449cf05278d",
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

Occurrence: `declaration:7207497c596c50d5064a05d0cd1edb1f23ac73b60c3ba9b3da70a614b52cf22e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.blocks : Atom -> String
  | .finitePrimeWindow => "finite verification of a prime window"
  | .candidateGapBound => "identification of the claimed finite gap bound"
  | .improvementOverBenchmark => "comparison with the benchmark supplied by the context"
  | .admissibleTuple => "finite admissible tuple certificate"
  | .localObstructionRemoval => "removal of local congruence obstructions"
  | .distributionCertificate => "distribution estimate certificate for primes in progressions"
  | .maynardWeightCertificate => "Maynard weight certificate for the finite window"
  | .denseClusterScore => "positive dense-cluster score from the sieve weights"
  | .parityBarrierFlag => "resolution of the parity barrier for the claimed inference"
  | .levelOfDistributionEstimate => "level-of-distribution estimate at the needed strength"
  | .uniformSieveErrorTerms => "uniform sieve error terms beyond the finite check"
  | .positivityInequality => "positivity of the sieve functional"
  | .infiniteGoodWindows => "infinite supply of windows with the certified behavior"
  | .asymptoticLiminfExtraction => "extraction of the liminf prime-gap statement"
  | .finalImprovedGapBound => "the improved prime-gap theorem-shaped claim"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variantddf27f9e86e6ce5dbb8195859789eeee9077209c0e03c615aed36d9e313fee45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variantddf27f9e86e6ce5dbb8195859789eeee9077209c0e03c615aed36d9e313fee45.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b21ddf259c616177e50c81aa377f215133bc6ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
