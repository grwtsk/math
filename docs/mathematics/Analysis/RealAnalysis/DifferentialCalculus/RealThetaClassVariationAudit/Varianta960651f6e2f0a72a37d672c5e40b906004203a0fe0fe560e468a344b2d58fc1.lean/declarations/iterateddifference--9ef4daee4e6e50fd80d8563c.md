# iteratedDifference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:806ab53739e36e8c0e4eae6a3db29e0cc3c8767d687a41f0815ec530e88ea187",
  "kind": "def",
  "lexical_name": "iteratedDifference",
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
  "slug": "iterateddifference--9ef4daee4e6e50fd80d8563c",
  "source": {
    "blob": "f05233e91f59fd2dd091663ed54a54d47a570387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 355,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ef4daee4e6e50fd80d8563cbc5d8ffa73203b7a30d5746312961decfbc556e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:806ab53739e36e8c0e4eae6a3db29e0cc3c8767d687a41f0815ec530e88ea187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def iteratedDifference (A t : ℝ) : ℝ :=
  deriv (correlationDifference A) t - correlationDifference A t / 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05233e91f59fd2dd091663ed54a54d47a570387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
