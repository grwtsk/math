# Atom.claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b88905d548a2a802aba3a79c92c1f0e3902ab5beea7753c0adc55bb5450fffc7",
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
  "slug": "atom-claim--e3c72ff2dbe4e47c784cd479",
  "source": {
    "blob": "5abbb6bb88e4a3db4e57564607a392c5c6802706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3c72ff2dbe4e47c784cd479f07b2fc8d5d4355e9ab09c5da9558167816e90dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b88905d548a2a802aba3a79c92c1f0e3902ab5beea7753c0adc55bb5450fffc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteTruncatedSeries => ctx.HasFiniteTruncatedSeries
  | .coefficientDomain => ctx.HasCoefficientDomain
  | .originalDomainOfConvergence => ctx.IsAnalyticOnOriginalDomain
  | .candidateExtendedDomain => ctx.HasCandidateExtendedDomain
  | .candidateExtensionDefinition => ctx.HasCandidateExtensionDefinition
  | .uniformCompactConvergence => ctx.HasUniformCompactConvergence
  | .localHolomorphicCharts => ctx.IsAnalyticOnExtendedDomain
  | .identityOnOverlap => ctx.AgreesOnOriginalDomain
  | .singularityClassification => ctx.HasSingularityControl
  | .poleResidueAnnotations => ctx.HasSingularityControl
  | .monodromyControl => ctx.HasSingularityControl
  | .finalAnalyticContinuation => finalClaim ctx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5abbb6bb88e4a3db4e57564607a392c5c6802706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
