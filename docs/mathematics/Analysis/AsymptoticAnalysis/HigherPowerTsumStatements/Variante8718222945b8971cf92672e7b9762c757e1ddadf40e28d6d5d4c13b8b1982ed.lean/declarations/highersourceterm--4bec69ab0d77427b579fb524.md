# higherSourceTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e081321c7ed9d6dd156e34b904d2da880b00d1e6a69bb9dbf81cf9953c07b9e",
  "kind": "def",
  "lexical_name": "higherSourceTerm",
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
  "slug": "highersourceterm--4bec69ab0d77427b579fb524",
  "source": {
    "blob": "a4091907ee30ca433189623c6063d7db8397b35b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 206,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bec69ab0d77427b579fb5246908c7c225b6851c11860758f96d544a509faee7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e081321c7ed9d6dd156e34b904d2da880b00d1e6a69bb9dbf81cf9953c07b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def higherSourceTerm (A : ℝ) (q : HigherPowerIndex) : ℝ :=
  Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
    sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ))

/-- Every product coordinate is a genuine higher prime power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4091907ee30ca433189623c6063d7db8397b35b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
