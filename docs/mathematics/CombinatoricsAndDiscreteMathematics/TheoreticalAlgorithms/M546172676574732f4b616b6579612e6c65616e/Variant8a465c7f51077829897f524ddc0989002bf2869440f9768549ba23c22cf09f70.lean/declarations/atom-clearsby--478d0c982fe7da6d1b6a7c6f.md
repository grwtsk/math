# Atom.clearsBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61c91d5e26576c90b883bda193f92488450eb8b0363c6c2d3e660319bb3e3568",
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
  "slug": "atom-clearsby--478d0c982fe7da6d1b6a7c6f",
  "source": {
    "blob": "b9adc567ce825f36e675a6a53d3a5103b5badb2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579612e6c65616e/Variant8a465c7f51077829897f524ddc0989002bf2869440f9768549ba23c22cf09f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:478d0c982fe7da6d1b6a7c6fc461dd25b77035463ab9e3c12d57ac6e3a985de9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579612e6c65616e/Variant8a465c7f51077829897f524ddc0989002bf2869440f9768549ba23c22cf09f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61c91d5e26576c90b883bda193f92488450eb8b0363c6c2d3e660319bb3e3568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.clearsBy : Atom -> String
  | .finiteDirectionSet => "a verified finite direction set"
  | .finiteCoverageRelation => "a verified finite coverage relation"
  | .finiteTubeModel => "a formal tube model"
  | .continuumDirectionSpace => "a formal continuum direction space"
  | .unitSegmentPredicate => "a formal unit-segment predicate"
  | .deltaTubeAtScale => "a formal delta-tube construction"
  | .singleScaleIncidenceEstimate => "a proved incidence estimate at one scale"
  | .scaleUniformEstimate => "a uniform estimate across all required scales"
  | .finiteDirectionsToContinuumDirections => "a density-to-continuum transfer theorem"
  | .volumeLowerBound => "a proved volume lower bound"
  | .hausdorffDimensionTransfer => "a theorem deriving Hausdorff dimension"
  | .minkowskiDimensionTransfer => "a theorem deriving Minkowski dimension"
  | .finalKakeyaDimensionClaim => "a proof of the final dimension claim"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579612e6c65616e/Variant8a465c7f51077829897f524ddc0989002bf2869440f9768549ba23c22cf09f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579612e6c65616e/Variant8a465c7f51077829897f524ddc0989002bf2869440f9768549ba23c22cf09f70.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9adc567ce825f36e675a6a53d3a5103b5badb2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
