# actualPeriodicTransportJet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2799a355dc092a6a2fbbbe6dd32b404baa7128d9a5d98fabf64e361ca6ff2fcc",
  "kind": "def",
  "lexical_name": "actualPeriodicTransportJet",
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
  "slug": "actualperiodictransportjet--c1cea63c8686f111954f5fd9",
  "source": {
    "blob": "e29d400e872d0fe077882cad86e54a792074d26e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant0be090bbf785511dfae59f4206af2dc0416baae8f23cef9e4aaa63f96be580d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1cea63c8686f111954f5fd92096979440b53a68284ac419dcd8dad03693fe1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant0be090bbf785511dfae59f4206af2dc0416baae8f23cef9e4aaa63f96be580d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2799a355dc092a6a2fbbbe6dd32b404baa7128d9a5d98fabf64e361ca6ff2fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualPeriodicTransportJet (A z : ℝ) : ℝ :=
  iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z -
    (3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z -
      iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z / 4 +
        (3 / 8 : ℝ) * iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z

/-- The original covariant kernel and twisted trace give the exact transported jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant0be090bbf785511dfae59f4206af2dc0416baae8f23cef9e4aaa63f96be580d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant0be090bbf785511dfae59f4206af2dc0416baae8f23cef9e4aaa63f96be580d0.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29d400e872d0fe077882cad86e54a792074d26e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
