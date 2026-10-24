# HasSimplePoleResidueAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0db32f2fcc36ea66f922176421da5bc84797bcf70b6256fb09feb097d5f2790d",
  "kind": "def",
  "lexical_name": "HasSimplePoleResidueAt",
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
  "slug": "hassimplepoleresidueat--ac2ed6a8813a9a85e6c0fdc9",
  "source": {
    "blob": "610ce8d65107e434aeb95a9318450637be3b6324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac2ed6a8813a9a85e6c0fdc96ffd472cf3ecfe5c60ad6af0d787b3fc764c164a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0db32f2fcc36ea66f922176421da5bc84797bcf70b6256fb09feb097d5f2790d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasSimplePoleResidueAt
    (h : ℂ → ℂ) (z r : ℂ) : Prop :=
  Tendsto (fun w ↦ (w - z) * h w) (𝓝[≠] z) (𝓝 r)

namespace AnalyticAt

/-- Exact principal-part decomposition of the logarithmic derivative near a
finite-order analytic zero.  The equality is asserted only on the punctured
neighborhood, where totalized division agrees with the meromorphic germ. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `610ce8d65107e434aeb95a9318450637be3b6324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
