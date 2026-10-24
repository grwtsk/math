# criticalLine_of_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:948d816c-bbb3-6594-e6d2-0eb8a4ccfa4f",
  "kind": "theorem",
  "lexical_name": "criticalLine_of_centered",
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
  "slug": "criticalline-of-centered--1ce5ec6df32b7f5f33695c3f",
  "source": {
    "blob": "1656804c4d690e60d481380af4b2849ca16a3209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/SuppliedCenteringConsequences/Variante11b780833188e7d/CenteredRealPart.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ce5ec6df32b7f5f33695c3f4575b454cca90e8ac0ed4dd38114a7f213ffbeb7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RealFunctions/SuppliedCenteringConsequences/Variante11b780833188e7d/CenteredRealPart.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:948d816c-bbb3-6594-e6d2-0eb8a4ccfa4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalLine_of_centered
    (z : Folder.Research.LFunctionZero.LFunctionZeroData)
    (h : Folder.Research.LFunctionZero.CenteredAtSpectralPivot z) :
    Folder.Research.LFunctionZero.LiesOnCriticalLine z :=
  Folder.Research.LFunctionZero.criticalLine_of_centered z h

end GRWTSK.Analysis.RealAnalysis.RealFunctions.SuppliedCenteringConsequences.Variante11b780833188e7d
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/RealFunctions/SuppliedCenteringConsequences/Variante11b780833188e7d/CenteredRealPart.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/RealFunctions/SuppliedCenteringConsequences/Variante11b780833188e7d/CenteredRealPart.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1656804c4d690e60d481380af4b2849ca16a3209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
