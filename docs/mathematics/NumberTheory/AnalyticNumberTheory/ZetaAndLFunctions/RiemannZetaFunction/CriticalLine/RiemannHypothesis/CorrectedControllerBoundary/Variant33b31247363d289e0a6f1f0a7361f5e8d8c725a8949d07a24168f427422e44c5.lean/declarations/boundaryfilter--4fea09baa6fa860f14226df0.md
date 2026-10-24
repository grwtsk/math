# boundaryFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cfa351c9071b241428cbb2a402eefd2f29ee737f650573db53650017f2e377d",
  "kind": "def",
  "lexical_name": "boundaryFilter",
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
  "slug": "boundaryfilter--4fea09baa6fa860f14226df0",
  "source": {
    "blob": "492101ca83c2f7f791dfc130ac2e1dadf3183b84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 13,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant33b31247363d289e0a6f1f0a7361f5e8d8c725a8949d07a24168f427422e44c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fea09baa6fa860f14226df040b1ad4bde24445df3becef2f7a76861965a7dae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant33b31247363d289e0a6f1f0a7361f5e8d8c725a8949d07a24168f427422e44c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cfa351c9071b241428cbb2a402eefd2f29ee737f650573db53650017f2e377d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def boundaryFilter (ε h t : ℝ) : ℂ := MobiusSourceFilterQuotient.W ((t : ℂ)*Complex.I) / MobiusSourceFilterQuotient.W ((ε : ℂ)+(t : ℂ)*Complex.I) * (1+(h : ℂ)*((ε : ℂ)+(t : ℂ)*Complex.I))⁻¹ ^ 6 / (1+(ε : ℂ)+(t : ℂ)*Complex.I)
end FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDelta

/-! The exact actual-source boundary residual, with every signed numerator factor retained. -/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusSourceFilterQuotient MobiusPoleNumerator CorrectedControllerAnalytic
open FixedLaplaceContinuation FixedLaplaceBoundary SourceFilterDelta
noncomputable section

/-- Positive shifts smaller than one half avoid the only right-half-plane source zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant33b31247363d289e0a6f1f0a7361f5e8d8c725a8949d07a24168f427422e44c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant33b31247363d289e0a6f1f0a7361f5e8d8c725a8949d07a24168f427422e44c5.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492101ca83c2f7f791dfc130ac2e1dadf3183b84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
