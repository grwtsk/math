# mvfderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6f04ad737dcc11557fff0ed27b95cdf678dbb289a617544213d41f07c5ce4c5",
  "kind": "def",
  "lexical_name": "mvfderiv",
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
  "slug": "mvfderiv--ae869000a5ae71075ce4d05a",
  "source": {
    "blob": "ff5126317b54aaa393eb4c816c76e3c24cfacf45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 450,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae869000a5ae71075ce4d05ad7cc74c965d6f16138ca039ffda74ff2928b4a78",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6f04ad737dcc11557fff0ed27b95cdf678dbb289a617544213d41f07c5ce4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mvfderiv (g : M → F) :
    Π x : M, TangentSpace% x →L[𝕜] F :=
  fun x ↦ (NormedSpace.fromTangentSpace <| g x).toContinuousLinearMap ∘L (mfderiv% g x)
@[deprecated (since := "2026-05-17")] alias extDerivFun := mvfderiv

namespace Manifold
open scoped Bundle Manifold ContDiff

open Lean Meta Elab Tactic

/-- `d[s] f x` (scoped to the `Manifold` namespace) elaborates to `mvfderivWithin I f s x`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "d[" s:term "]" ppSpace t:term:arg : term => do
  let es ← Term.elabTerm s none
  let e ← ensureIsFunction <| ← Term.elabTerm t none
  let (srcI, _tgtI) ← findModels e none
  mkAppM ``mvfderivWithin #[srcI, e, es]

/-- `d% f x` (scoped to the `Manifold` namespace) elaborates to `mvfderiv I f x`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "d%" ppSpace t:term:arg : term => do
  let e ← ensureIsFunction <| ← Term.elabTerm t none
  let (srcI, _tgtI) ← findModels e none
  mkAppM ``mvfderiv #[srcI, e]

open Bundle PrettyPrinter Delaborator SubExpr

/-- Delaborator for `mvfderivWithin`. -/
-- There is no need to special-case any arguments which could use the `T%` elaborator:
-- the argument to `mvfderivWithin` is a vector-valued function, which a map to a total space
-- can never be.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff5126317b54aaa393eb4c816c76e3c24cfacf45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
