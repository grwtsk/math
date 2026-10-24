# uniform_cap_of_finite_horizon_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:362d642a-fcb2-0b7b-c4aa-f41d8b5a28ec",
  "kind": "theorem",
  "lexical_name": "uniform_cap_of_finite_horizon_contraction",
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
  "slug": "uniform-cap-of-finite-horizon-contraction--c41685e0a46605c588c4136f",
  "source": {
    "blob": "e714b51117003eb409e046078e51dc447c946125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c41685e0a46605c588c4136fc860f620e200dee5a29ccb3aa156a54682363076",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:362d642a-fcb2-0b7b-c4aa-f41d8b5a28ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_cap_of_finite_horizon_contraction {U : ℝ → ℝ} {R C θ : ℝ}
    (hθ : θ < 1)
    (hbounded : ∀ T : ℝ, R ≤ T → BddAbove (U '' Set.Icc R T))
    (hclose : ∀ T : ℝ, R ≤ T → finiteHorizon U R T ≤ C + θ * finiteHorizon U R T) :
    ∀ A : ℝ, R ≤ A → U A ≤ C / (1 - θ) := by
  intro A hA
  exact (value_le_finiteHorizon (hbounded A hA) hA le_rfl).trans
    (le_of_affine_contraction hθ (hclose A hA))

end FormalResearch.RiemannHypothesis.KQHBootstrap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e714b51117003eb409e046078e51dc447c946125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
