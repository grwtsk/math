# mangoldtFourierSymbol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c4032b63e51ded2f2ca7b4b5a7ce2804276c034f2b0e56392e8586752c4be7d",
  "kind": "def",
  "lexical_name": "mangoldtFourierSymbol",
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
  "slug": "mangoldtfouriersymbol--90bd0724216b19b642f7d47d",
  "source": {
    "blob": "87b25ea5cad854eb498f9259ffa51acbfa9dce3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90bd0724216b19b642f7d47d53486a7cf7273d023e5838466ab86061d5efacfc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c4032b63e51ded2f2ca7b4b5a7ce2804276c034f2b0e56392e8586752c4be7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mangoldtFourierSymbol (A ξ : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    mangoldtCoefficient n * Real.cos (2 * Real.pi * ξ * Real.log n)

/-- The actual frequency operator is a finite sum of existing phase-average CLMs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b25ea5cad854eb498f9259ffa51acbfa9dce3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
