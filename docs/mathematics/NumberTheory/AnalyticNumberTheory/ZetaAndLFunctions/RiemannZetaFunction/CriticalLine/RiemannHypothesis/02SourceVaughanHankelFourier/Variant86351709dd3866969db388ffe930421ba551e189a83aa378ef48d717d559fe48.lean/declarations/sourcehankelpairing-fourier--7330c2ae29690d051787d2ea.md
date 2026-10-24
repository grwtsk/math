# sourceHankelPairing_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b9332f1-bc9e-136d-6944-b49f81b0dd7c",
  "kind": "theorem",
  "lexical_name": "sourceHankelPairing_fourier",
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
  "slug": "sourcehankelpairing-fourier--7330c2ae29690d051787d2ea",
  "source": {
    "blob": "c7418a4095cd1e5a5b0e231020f37471dda9a33e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/02SourceVaughanHankelFourier/Variant86351709dd3866969db388ffe930421ba551e189a83aa378ef48d717d559fe48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7330c2ae29690d051787d2ea654dc9e4ed3891f5f008595fac568efbfb24fd9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/02SourceVaughanHankelFourier/Variant86351709dd3866969db388ffe930421ba551e189a83aa378ef48d717d559fe48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b9332f1-bc9e-136d-6944-b49f81b0dd7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceHankelPairing_fourier (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A =
      (1 / (2 * Real.pi)) * ∫ ξ, actualJointFourierIntegrand A ξ := by
  unfold sourceHankelPairing mangoldtForwardProfile centeredMobiusReflectedProfile
  rw [actualJointFourierIntegrand_eq]
  exact finite_hankel_fourier hA _ _ _ _
    (fun m hm ↦ longInventory_pos A hm) (fun n hn ↦ longInventory_pos A hn)

/-- The same centered deleted diagonal and independent main term are subtracted on the Fourier side. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/02SourceVaughanHankelFourier/Variant86351709dd3866969db388ffe930421ba551e189a83aa378ef48d717d559fe48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/02SourceVaughanHankelFourier/Variant86351709dd3866969db388ffe930421ba551e189a83aa378ef48d717d559fe48.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7418a4095cd1e5a5b0e231020f37471dda9a33e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
