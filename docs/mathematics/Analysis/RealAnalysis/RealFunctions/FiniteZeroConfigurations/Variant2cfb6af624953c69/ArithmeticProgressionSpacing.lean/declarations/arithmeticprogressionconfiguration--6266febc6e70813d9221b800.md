# ArithmeticProgressionConfiguration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f22011c2c8daff2a0d99a79c8a2c1c4f706b1a4d4423646987e1413da9d7661",
  "kind": "structure",
  "lexical_name": "ArithmeticProgressionConfiguration",
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
  "slug": "arithmeticprogressionconfiguration--6266febc6e70813d9221b800",
  "source": {
    "blob": "7d27ce35d69c59077d8f5b0e62fb640104d9cfc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/FiniteZeroConfigurations/Variant2cfb6af624953c69/ArithmeticProgressionSpacing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6266febc6e70813d9221b8002a702699a557b78b440ae05adc6b281af3cd78f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RealFunctions/FiniteZeroConfigurations/Variant2cfb6af624953c69/ArithmeticProgressionSpacing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f22011c2c8daff2a0d99a79c8a2c1c4f706b1a4d4423646987e1413da9d7661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArithmeticProgressionConfiguration
    (X : FiniteZeroConfiguration) where
  spacing : ℝ
  spacing_pos : 0 < spacing
  arithmetic :
    ∀ i j : Fin X.n,
      X.pos j - X.pos i =
        (j.val : ℝ) * spacing - (i.val : ℝ) * spacing


end GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteZeroConfigurations.Variant2cfb6af624953c69
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/RealFunctions/FiniteZeroConfigurations/Variant2cfb6af624953c69/ArithmeticProgressionSpacing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/RealFunctions/FiniteZeroConfigurations/Variant2cfb6af624953c69/ArithmeticProgressionSpacing.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d27ce35d69c59077d8f5b0e62fb640104d9cfc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
