# TestWeightFacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3676850173ee86b5d6422f60897d50e0dc072d73e8eb261f5baff9255693963",
  "kind": "def",
  "lexical_name": "TestWeightFacts",
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
  "slug": "testweightfacts--257c2f6e4b628b8e07e4e0fb",
  "source": {
    "blob": "f1a259643247a992566d589c6fc03a323f3e05d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:257c2f6e4b628b8e07e4e0fb47ad923ef0e34ef15597a9b3117029931a520d8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3676850173ee86b5d6422f60897d50e0dc072d73e8eb261f5baff9255693963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TestWeightFacts (Pf : ℝ → Params) : Prop :=
  ∃ C T₁ : ℝ, 0 ≤ C ∧ ∀ T : ℝ, T₁ ≤ T → ∀ k l : ℤ,
    ContDiff ℝ 2 (kfun (Pf T) T k l) ∧ HasCompactSupport (kfun (Pf T) T k l) ∧
    tsupport (kfun (Pf T) T k l) ⊆ Icc (-(Pf T).L T) ((Pf T).L T) ∧
    (∀ t : ℝ, ‖Hfn (kfun (Pf T) T k l) (((5/4:ℝ):ℂ) + t * I)‖
        ≤ C * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2
          * (cauchyK ((Pf T).tau T k) t * cauchyK ((Pf T).tau T l) t)) ∧
    (∀ t : ℝ, (|t - (Pf T).tau T k| + |t - (Pf T).tau T l|) * ‖Hfn (kfun (Pf T) T k l) (((5/4:ℝ):ℂ) + t * I)‖
        ≤ C * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T
          * (cauchyK ((Pf T).tau T k) t * cauchyK ((Pf T).tau T l) t)) ∧
    (∀ t : ℝ, ‖Hfn (kfun (Pf T) T k l) (1 - (5/4:ℝ) - t * I)‖
        ≤ C * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2
          * (cauchyK (-(Pf T).tau T k) t * cauchyK (-(Pf T).tau T l) t)) ∧
    (∀ t : ℝ, (|t + (Pf T).tau T k| + |t + (Pf T).tau T l|) * ‖Hfn (kfun (Pf T) T k l) (1 - (5/4:ℝ) - t * I)‖
        ≤ C * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T
          * (cauchyK (-(Pf T).tau T k) t * cauchyK (-(Pf T).tau T l) t))

/-! ## Small helpers -/

/-- a compactly supported k vanishes at ±log N for N > e^L. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1a259643247a992566d589c6fc03a323f3e05d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
