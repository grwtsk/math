# finalClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba0c83fdc9f6996fa341103430ef80a71e346160c733080e58385b9d674b920d",
  "kind": "def",
  "lexical_name": "finalClaim",
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
  "slug": "finalclaim--50f974bde01e82c8ccf4ad96",
  "source": {
    "blob": "a49b58197fd539ed7d47d7ee56d9e066c2994472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 114,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/LorentzianSyntheticOT/Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50f974bde01e82c8ccf4ad96a56efba77df0d9ecabd03af0a8280e71e728e030",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/LorentzianSyntheticOT/Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba0c83fdc9f6996fa341103430ef80a71e346160c733080e58385b9d674b920d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finalClaim (ctx : Context) : Prop :=
  (∀ X : ctx.Space,
      ∀ m : ctx.Measure,
        ctx.SyntheticTimelikeRicciBound X m ->
          ctx.IsLorentzianPrelengthSpace X) ∧
  (∀ μ ν : ctx.ProbabilityMeasure,
      ∃ γ : ctx.Coupling,
        ctx.IsOptimalCoupling γ μ ν) ∧
  ctx.KantorovichDualityHolds ∧
  (∀ γ : ctx.GeodesicPlan, ctx.EntropyConvexAlong γ) ∧
  ctx.StabilityUnderWeakConvergence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/LorentzianSyntheticOT/Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/LorentzianSyntheticOT/Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a49b58197fd539ed7d47d7ee56d9e066c2994472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
