# verify_unique_root_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb77cfffd986ec01707cbbb5deb70cfe0d09f56f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e1ba0d1-6d00-155c-48c3-b6ad5a04d8ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86952a6b-78e1-2b70-9f84-5f9bded1c2e3",
  "kind": "theorem",
  "lexical_name": "verify_unique_root_core",
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
  "slug": "verify-unique-root-core--1c7a1224b60e1274dcbc2632",
  "source": {
    "blob": "bb77cfffd986ec01707cbbb5deb70cfe0d09f56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 286,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c7a1224b60e1274dcbc263227bcbc358117a8854568bb8edd42eedddd3ca0b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86952a6b-78e1-2b70-9f84-5f9bded1c2e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_unique_root_core (e : Expr) (hsupp : ExprSupported e)
    (hvar0 : UsesOnlyVar0 e) (I : IntervalRat)
    (evalCfg : EvalConfig) (newtonCfg : NewtonConfig)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi))
    (_h_cert_core : checkNewtonContractsCore e I evalCfg = true)
    (h_cert_newton : checkNewtonContracts e I newtonCfg = true) :
    ∃! x, x ∈ I ∧ Expr.eval (fun _ => x) e = 0 := by
  -- We only *use* `h_cert_newton`. The core certificate is present for external tooling.
  exact verify_unique_root_newton e hsupp hvar0 I newtonCfg hCont h_cert_newton

/-! ### Fully Computable Unique Root Verification

The following theorems provide a **fully computable** path to proving unique root existence
using only `checkNewtonContractsCore`. This allows `native_decide` to work without requiring
noncomputable functions like `Real.exp` or `Real.log`. -/

/-- Newton step preserves roots when using Core evaluation functions.
    If x is a root in I and newtonStepCore produces N, then x ∈ N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb77cfffd986ec01707cbbb5deb70cfe0d09f56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
