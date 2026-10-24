# cosh_strictMonoOn_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a1add19-9659-9852-b2cb-434a130d99d6",
  "kind": "theorem",
  "lexical_name": "cosh_strictMonoOn_nonneg",
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
  "slug": "cosh-strictmonoon-nonneg--34fc29bef87ef82683884360",
  "source": {
    "blob": "5c29951284969c83a89047cd0abdbd871421d181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 263,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34fc29bef87ef82683884360e3edd4a548735e4684e2020179693f80a4b95777",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a1add19-9659-9852-b2cb-434a130d99d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cosh_strictMonoOn_nonneg : StrictMonoOn cosh (Ici 0) :=
  Real.cosh_strictMonoOn

end LeanCert.Core.DerivativeIntervals

/-! ## One-Sided Taylor Bounds

For convex functions, the Taylor polynomial provides a one-sided bound.
For exp on [0, ∞), the n-th Taylor polynomial is a lower bound.
For concave functions, similar upper bounds hold.

These bounds are tighter than symmetric remainder bounds at endpoints,
which is important for verified numerics.
-/

namespace LeanCert.Core.OneSidedTaylor

open Real Set

/-! ### Exp lower bounds (convexity gives Taylor poly ≤ function) -/

/-- 1 ≤ exp x for x ≥ 0 (Taylor degree 0) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c29951284969c83a89047cd0abdbd871421d181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
