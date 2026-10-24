# boundaryFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0efc97fcafa27e5e5949fb690442a3c0699214223c6ad9b18c66226eeedf4bb",
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
  "slug": "boundaryfilter--56e8965b519c05dea3124e75",
  "source": {
    "blob": "a7e6cd7df97637494d96a8b64397b7439ed9f445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 447,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56e8965b519c05dea3124e758777afc4f31857193eb95545413c23cb151a9c2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0efc97fcafa27e5e5949fb690442a3c0699214223c6ad9b18c66226eeedf4bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryFilter (ε h t : ℝ) : ℂ :=
  W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I) *
    (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6 /
      (1 + (ε : ℂ) + (t : ℂ) * Complex.I)

end
end SourceFilterDeltaScratch

namespace SourceFilterDeltaLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient
open SourceFilterDeltaScratch
noncomputable section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7e6cd7df97637494d96a8b64397b7439ed9f445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
