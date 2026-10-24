# Atom.blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:296fbb1b5e59a9829b42446f1eeff658d267b4711df595bc8152583a146a5dcc",
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
  "slug": "atom-blocks--daae627c3495aef2dd3d9391",
  "source": {
    "blob": "5ecc100dd87ebe3d54df3213e79c3f93373123bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f52482e6c65616e/Variantf10485bd0a774141f6532c4632be8e85cb6210f3f5f67d2c5cd1f726ae902a4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daae627c3495aef2dd3d939129ef5b4207bc09cae1dd26b816762717a616c9f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f52482e6c65616e/Variantf10485bd0a774141f6532c4632be8e85cb6210f3f5f67d2c5cd1f726ae902a4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:296fbb1b5e59a9829b42446f1eeff658d267b4711df595bc8152583a146a5dcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.blocks : Atom -> String
  | .finiteZetaCarrier => "construction of a finite zeta trace carrier at a stage"
  | .finiteLoweringToTrace => "lowering finite witness data into a trace-level zeta statement"
  | .analyticZetaObject => "definition of the analytic zeta object used by the zero predicate"
  | .seriesDomain => "domain on which the initial zeta series is defined"
  | .meromorphicContinuation => "extension of the zeta object beyond the series domain"
  | .functionalEquation => "functional equation needed for the classical zero symmetry"
  | .nontrivialZeroPredicate => "semantic identification of nontrivial zeros"
  | .criticalLinePredicate => "semantic identification of the critical line"
  | .finiteHeightZeroCheck => "finite-height verification that a traced zero is on the line"
  | .bitTraceMatchesAnalyticZero => "bridge from bit trace data to analytic zero data"
  | .finiteStagesExhaustAllZeros => "coverage of every analytic nontrivial zero by finite stages"
  | .finalAllZerosOnCriticalLine => "the RH-shaped universal statement over all nontrivial zeros"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f52482e6c65616e/Variantf10485bd0a774141f6532c4632be8e85cb6210f3f5f67d2c5cd1f726ae902a4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f52482e6c65616e/Variantf10485bd0a774141f6532c4632be8e85cb6210f3f5f67d2c5cd1f726ae902a4c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ecc100dd87ebe3d54df3213e79c3f93373123bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
