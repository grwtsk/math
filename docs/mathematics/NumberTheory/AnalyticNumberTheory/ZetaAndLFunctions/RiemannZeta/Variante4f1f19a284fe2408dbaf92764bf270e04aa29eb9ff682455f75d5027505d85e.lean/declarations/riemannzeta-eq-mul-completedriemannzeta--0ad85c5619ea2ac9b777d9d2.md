# riemannZeta_eq_mul_completedRiemannZeta₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e3b07df-e19a-8e82-151f-86519436d166",
  "kind": "lemma",
  "lexical_name": "riemannZeta_eq_mul_completedRiemannZeta₀",
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
  "slug": "riemannzeta-eq-mul-completedriemannzeta--0ad85c5619ea2ac9b777d9d2",
  "source": {
    "blob": "83bf47d19c0e92d7b8a80a70b983843adc5896e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variante4f1f19a284fe2408dbaf92764bf270e04aa29eb9ff682455f75d5027505d85e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad85c5619ea2ac9b777d9d2d09c7b1169492d4d595f354b839ee43ba7739c95",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variante4f1f19a284fe2408dbaf92764bf270e04aa29eb9ff682455f75d5027505d85e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e3b07df-e19a-8e82-151f-86519436d166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma riemannZeta_eq_mul_completedRiemannZeta₀ (s : ℂ) :
    riemannZeta s = (s * completedRiemannZeta₀ s - 1 - s / (1 - s)) /
      (2 * π ^ (-s / 2) * Gamma (s / 2 + 1)) := by
  rcases eq_or_ne s 0 with rfl | hs
  · simp [riemannZeta_zero]
  · rw [riemannZeta_eq_completedRiemannZeta₀ hs, Gamma_add_one (s / 2) (by grind)]
    field

/-- The trivial zeroes of the zeta function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variante4f1f19a284fe2408dbaf92764bf270e04aa29eb9ff682455f75d5027505d85e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variante4f1f19a284fe2408dbaf92764bf270e04aa29eb9ff682455f75d5027505d85e.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83bf47d19c0e92d7b8a80a70b983843adc5896e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
