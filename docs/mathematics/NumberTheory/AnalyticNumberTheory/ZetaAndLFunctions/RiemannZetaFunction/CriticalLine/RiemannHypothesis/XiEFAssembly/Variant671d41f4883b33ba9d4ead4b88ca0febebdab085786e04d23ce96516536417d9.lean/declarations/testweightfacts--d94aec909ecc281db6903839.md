# TestWeightFacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5188542d94c5afff93cc23b2021ee6616c3dd9262e3be56d4daab24e6c123f80",
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
  "slug": "testweightfacts--d94aec909ecc281db6903839",
  "source": {
    "blob": "cf03915a109a2b9b107a3ad56259ade850ccbc13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant671d41f4883b33ba9d4ead4b88ca0febebdab085786e04d23ce96516536417d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d94aec909ecc281db69038390f7a43f407a90705aa3d4e2c65332a9463596ab9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant671d41f4883b33ba9d4ead4b88ca0febebdab085786e04d23ce96516536417d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5188542d94c5afff93cc23b2021ee6616c3dd9262e3be56d4daab24e6c123f80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–105.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant671d41f4883b33ba9d4ead4b88ca0febebdab085786e04d23ce96516536417d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant671d41f4883b33ba9d4ead4b88ca0febebdab085786e04d23ce96516536417d9.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf03915a109a2b9b107a3ad56259ade850ccbc13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
