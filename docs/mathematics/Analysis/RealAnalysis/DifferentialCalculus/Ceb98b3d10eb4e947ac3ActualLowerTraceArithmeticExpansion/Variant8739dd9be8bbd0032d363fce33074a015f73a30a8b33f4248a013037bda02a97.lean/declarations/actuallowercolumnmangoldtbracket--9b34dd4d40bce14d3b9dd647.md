# actualLowerColumnMangoldtBracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a35599f854635d7128b9d342bc9011afb8dea73a71a91d145765564d56c2ef4e",
  "kind": "def",
  "lexical_name": "actualLowerColumnMangoldtBracket",
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
  "slug": "actuallowercolumnmangoldtbracket--9b34dd4d40bce14d3b9dd647",
  "source": {
    "blob": "5d4b903ac1363645998f72d4247f072494ca4759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b34dd4d40bce14d3b9dd64741162ff2d54bdbd4e5db661920c71764daadf365",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a35599f854635d7128b9d342bc9011afb8dea73a71a91d145765564d56c2ef4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualLowerColumnMangoldtBracket (A : ℝ) : ℝ :=
  actualLowerColumnHalfMangoldtRow A -
    Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualLowerColumnPrimeTest A t) +
    Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      actualLowerColumnPrimeTest A (actualTimeLower A) *
        mangoldtLogError (actualTimeLower A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4b903ac1363645998f72d4247f072494ca4759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
