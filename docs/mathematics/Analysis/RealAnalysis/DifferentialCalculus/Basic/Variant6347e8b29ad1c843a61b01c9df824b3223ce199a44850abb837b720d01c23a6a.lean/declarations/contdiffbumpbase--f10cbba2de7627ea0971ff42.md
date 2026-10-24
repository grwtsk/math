# ContDiffBumpBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af8654d2a2ad07a323f64915ed8d0c9341fe9697bb26253cfec218db440d9f28",
  "kind": "structure",
  "lexical_name": "ContDiffBumpBase",
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
  "slug": "contdiffbumpbase--f10cbba2de7627ea0971ff42",
  "source": {
    "blob": "7441f62438b30b883e5b647e5476b1c338058d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f10cbba2de7627ea0971ff42cd798d3898852a2156aef8bf8a13a232f7b01d2e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af8654d2a2ad07a323f64915ed8d0c9341fe9697bb26253cfec218db440d9f28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContDiffBumpBase (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E] where
  /-- The function underlying this family of bump functions -/
  toFun : ℝ → E → ℝ
  mem_Icc : ∀ (R : ℝ) (x : E), toFun R x ∈ Icc (0 : ℝ) 1
  symmetric : ∀ (R : ℝ) (x : E), toFun R (-x) = toFun R x
  smooth : ContDiffOn ℝ ∞ (uncurry toFun) (Ioi (1 : ℝ) ×ˢ (univ : Set E))
  eq_one : ∀ R : ℝ, 1 < R → ∀ x : E, ‖x‖ ≤ 1 → toFun R x = 1
  support : ∀ R : ℝ, 1 < R → Function.support (toFun R) = Metric.ball (0 : E) R

/-- A class registering that a real vector space admits bump functions. This will be instantiated
first for inner product spaces, and then for finite-dimensional normed spaces.
We use a specific class instead of `Nonempty (ContDiffBumpBase E)` for performance reasons. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7441f62438b30b883e5b647e5476b1c338058d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
