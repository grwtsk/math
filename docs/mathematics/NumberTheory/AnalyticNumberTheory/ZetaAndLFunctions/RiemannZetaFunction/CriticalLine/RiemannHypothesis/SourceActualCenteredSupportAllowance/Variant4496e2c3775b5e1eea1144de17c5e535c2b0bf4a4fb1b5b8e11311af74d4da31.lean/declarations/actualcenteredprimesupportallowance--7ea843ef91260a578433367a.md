# actualCenteredPrimeSupportAllowance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:beb253969d9d41a39bd0d195fa78f5ec21be01245fcd68428f650412107f3720",
  "kind": "def",
  "lexical_name": "actualCenteredPrimeSupportAllowance",
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
  "slug": "actualcenteredprimesupportallowance--7ea843ef91260a578433367a",
  "source": {
    "blob": "cc6b3b26e5107493c63c2dbe7ef3636807412367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant4496e2c3775b5e1eea1144de17c5e535c2b0bf4a4fb1b5b8e11311af74d4da31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ea843ef91260a578433367af67e2f7aeaa96c94a3eee6c33eba653fa3b5ae61",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant4496e2c3775b5e1eea1144de17c5e535c2b0bf4a4fb1b5b8e11311af74d4da31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:beb253969d9d41a39bd0d195fa78f5ec21be01245fcd68428f650412107f3720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCenteredPrimeSupportAllowance (A : ℝ) : ℝ :=
  (actualClosedPrimeLogMass A (3 / 2) / (2 * Real.pi)) *
    ((∫ t in -actualBumpMovingHeight A (3 / 2)..actualBumpMovingHeight A (3 / 2),
      ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖) -
      (actualInitialPrimeMellin A
        ((3 / 2 : ℂ) + (actualBumpMovingHeight A (3 / 2) : ℂ) * I)).im +
      (actualInitialPrimeMellin A
        ((3 / 2 : ℂ) + (-actualBumpMovingHeight A (3 / 2) : ℂ) * I)).im)

/-- This diagnostic is the proved upper allowance on the complete actual centered phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant4496e2c3775b5e1eea1144de17c5e535c2b0bf4a4fb1b5b8e11311af74d4da31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant4496e2c3775b5e1eea1144de17c5e535c2b0bf4a4fb1b5b8e11311af74d4da31.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc6b3b26e5107493c63c2dbe7ef3636807412367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
