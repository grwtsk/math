# actualPositiveSixthPowerTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3da3828daefc12953f7ab4282024f3a665e04e7fc5274db11ff43d660b9fddf6",
  "kind": "def",
  "lexical_name": "actualPositiveSixthPowerTail",
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
  "slug": "actualpositivesixthpowertail--d66ddbb3a2eb571e2adaa6e6",
  "source": {
    "blob": "fe9a66e85ce2a689d841c47721070ca13a3e0576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variant28eaf593937a7d1fc999d65042bf53dd3613989f59045a7a29e31c2ed21112df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d66ddbb3a2eb571e2adaa6e6709be57afca4f78e118831cc3974cd90455724bc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variant28eaf593937a7d1fc999d65042bf53dd3613989f59045a7a29e31c2ed21112df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3da3828daefc12953f7ab4282024f3a665e04e7fc5274db11ff43d660b9fddf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualPositiveSixthPowerTail (T : ℝ) : ℝ :=
  ∑' o : zeroPositiveStrictTailSet T, positiveSixthPowerWeight T o

/-- The strict positive-ordinate sixth-power Stieltjes identity is an explicit
remaining adapter. Count convergence, integral convergence, and the boundary
subtraction are all retained, even when T is a zero ordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variant28eaf593937a7d1fc999d65042bf53dd3613989f59045a7a29e31c2ed21112df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variant28eaf593937a7d1fc999d65042bf53dd3613989f59045a7a29e31c2ed21112df.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe9a66e85ce2a689d841c47721070ca13a3e0576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
