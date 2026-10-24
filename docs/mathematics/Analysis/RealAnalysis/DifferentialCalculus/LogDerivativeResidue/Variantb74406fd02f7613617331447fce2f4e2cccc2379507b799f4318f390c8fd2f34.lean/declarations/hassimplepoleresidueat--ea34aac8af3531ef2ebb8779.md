# HasSimplePoleResidueAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd4d921bc0674b147d7926d3f10e7dda03c6e98d4cf2a8a1e7f9ee09efbc844b",
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
  "slug": "hassimplepoleresidueat--ea34aac8af3531ef2ebb8779",
  "source": {
    "blob": "cd3bedebe331761ce7a3625051f928f5a3678d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea34aac8af3531ef2ebb8779d5a1794bd2b743c25dcf1b99b7324d5da53f5856",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd4d921bc0674b147d7926d3f10e7dda03c6e98d4cf2a8a1e7f9ee09efbc844b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasSimplePoleResidueAt
    (h : ℂ → ℂ) (z r : ℂ) : Prop :=
  Tendsto (fun w ↦ (w - z) * h w) (𝓝[≠] z) (𝓝 r)

namespace AnalyticAt

/-- Exact principal-part decomposition of the logarithmic derivative near a
finite-order analytic zero.  The equality is asserted only on the punctured
neighborhood, where totalized division agrees with the meromorphic germ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd3bedebe331761ce7a3625051f928f5a3678d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
