# boundaryFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f3416aea1d667411e1a6d206a400c6ef0aa1e5e042f236c79bef3469b6b0f81",
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
  "slug": "boundaryfilter--5380ed0bda7eff87bf558267",
  "source": {
    "blob": "4ac25570ca4d6b905ccfe94b3764a8f1624170a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 5,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5380ed0bda7eff87bf558267f49f88a217ecd499dc5c7b3bff2768f6741059d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f3416aea1d667411e1a6d206a400c6ef0aa1e5e042f236c79bef3469b6b0f81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–16.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac25570ca4d6b905ccfe94b3764a8f1624170a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
