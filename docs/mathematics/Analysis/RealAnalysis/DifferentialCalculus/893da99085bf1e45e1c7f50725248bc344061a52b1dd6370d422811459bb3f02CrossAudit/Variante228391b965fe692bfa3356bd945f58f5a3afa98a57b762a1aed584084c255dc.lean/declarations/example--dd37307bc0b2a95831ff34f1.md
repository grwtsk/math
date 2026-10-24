# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5aa787206e57f86a3cd19f5813abab3511755116e8a8bf896fffcffd249a9ab",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--dd37307bc0b2a95831ff34f1",
  "source": {
    "blob": "e7630111b1b78b3f3649c94ae060b968412c0f37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/893da99085bf1e45e1c7f50725248bc344061a52b1dd6370d422811459bb3f02CrossAudit/Variante228391b965fe692bfa3356bd945f58f5a3afa98a57b762a1aed584084c255dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd37307bc0b2a95831ff34f1039d0550f3f65c35e6298083727cc57684c32c93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/893da99085bf1e45e1c7f50725248bc344061a52b1dd6370d422811459bb3f02CrossAudit/Variante228391b965fe692bfa3356bd945f58f5a3afa98a57b762a1aed584084c255dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5aa787206e57f86a3cd19f5813abab3511755116e8a8bf896fffcffd249a9ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A t : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (poleReducedCorrelation A)) t - poleReducedCorrelation A t / 4 =
      sourceCorrelation Realization.explicitSecondDerivative A t :=
  poleReducedCorrelation_pole_operator A t (by linarith)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/893da99085bf1e45e1c7f50725248bc344061a52b1dd6370d422811459bb3f02CrossAudit/Variante228391b965fe692bfa3356bd945f58f5a3afa98a57b762a1aed584084c255dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/893da99085bf1e45e1c7f50725248bc344061a52b1dd6370d422811459bb3f02CrossAudit/Variante228391b965fe692bfa3356bd945f58f5a3afa98a57b762a1aed584084c255dc.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7630111b1b78b3f3649c94ae060b968412c0f37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
