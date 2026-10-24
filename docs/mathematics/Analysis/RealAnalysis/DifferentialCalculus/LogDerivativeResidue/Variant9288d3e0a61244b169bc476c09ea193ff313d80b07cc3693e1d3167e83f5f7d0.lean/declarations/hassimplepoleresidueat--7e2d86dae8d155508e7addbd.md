# HasSimplePoleResidueAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:260202c45ec5be6efbe804a5a92506e124df1968a6676d2d88bf78f22a77926e",
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
  "slug": "hassimplepoleresidueat--7e2d86dae8d155508e7addbd",
  "source": {
    "blob": "9cee4422e117eec346e23eb0281c65008beac9af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant9288d3e0a61244b169bc476c09ea193ff313d80b07cc3693e1d3167e83f5f7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e2d86dae8d155508e7addbdd2f8f56e750423a0d2acf40297955a5ecfa9cf89",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant9288d3e0a61244b169bc476c09ea193ff313d80b07cc3693e1d3167e83f5f7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:260202c45ec5be6efbe804a5a92506e124df1968a6676d2d88bf78f22a77926e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasSimplePoleResidueAt
    (h : ℂ → ℂ) (z r : ℂ) : Prop :=
  Tendsto (fun w ↦ (w - z) * h w) (𝓝[≠] z) (𝓝 r)

namespace AnalyticAt

/-- The logarithmic derivative of a finite-order analytic germ has local
simple-pole coefficient equal to its analytic multiplicity. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant9288d3e0a61244b169bc476c09ea193ff313d80b07cc3693e1d3167e83f5f7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant9288d3e0a61244b169bc476c09ea193ff313d80b07cc3693e1d3167e83f5f7d0.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cee4422e117eec346e23eb0281c65008beac9af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
