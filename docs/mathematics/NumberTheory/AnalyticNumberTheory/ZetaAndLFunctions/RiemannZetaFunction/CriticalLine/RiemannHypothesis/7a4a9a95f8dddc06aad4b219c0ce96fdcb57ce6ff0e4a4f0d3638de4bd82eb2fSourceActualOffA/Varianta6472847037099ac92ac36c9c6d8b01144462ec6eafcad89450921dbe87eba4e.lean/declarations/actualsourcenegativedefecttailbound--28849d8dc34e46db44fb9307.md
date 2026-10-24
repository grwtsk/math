# ActualSourceNegativeDefectTailBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f05f6e2ab1e73a4547db0a71f6411baeae94b18fb711cbc180a8b7cd8d6e93ec",
  "kind": "def",
  "lexical_name": "ActualSourceNegativeDefectTailBound",
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
  "slug": "actualsourcenegativedefecttailbound--28849d8dc34e46db44fb9307",
  "source": {
    "blob": "1c28e01364b3cb72a61be891bb5d1ad0aa06cc43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/7a4a9a95f8dddc06aad4b219c0ce96fdcb57ce6ff0e4a4f0d3638de4bd82eb2fSourceActualOffA/Varianta6472847037099ac92ac36c9c6d8b01144462ec6eafcad89450921dbe87eba4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28849d8dc34e46db44fb93078f7fd4aa6d84d696a0da3143cda69b2a7ef4d05c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/7a4a9a95f8dddc06aad4b219c0ce96fdcb57ce6ff0e4a4f0d3638de4bd82eb2fSourceActualOffA/Varianta6472847037099ac92ac36c9c6d8b01144462ec6eafcad89450921dbe87eba4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f05f6e2ab1e73a4547db0a71f6411baeae94b18fb711cbc180a8b7cd8d6e93ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ActualSourceNegativeDefectTailBound : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    actualSourceNegativeDefect A ≤ K

/-- A constant tail cap on the same actual reduced off-axis zero head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/7a4a9a95f8dddc06aad4b219c0ce96fdcb57ce6ff0e4a4f0d3638de4bd82eb2fSourceActualOffA/Varianta6472847037099ac92ac36c9c6d8b01144462ec6eafcad89450921dbe87eba4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/7a4a9a95f8dddc06aad4b219c0ce96fdcb57ce6ff0e4a4f0d3638de4bd82eb2fSourceActualOffA/Varianta6472847037099ac92ac36c9c6d8b01144462ec6eafcad89450921dbe87eba4e.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c28e01364b3cb72a61be891bb5d1ad0aa06cc43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
