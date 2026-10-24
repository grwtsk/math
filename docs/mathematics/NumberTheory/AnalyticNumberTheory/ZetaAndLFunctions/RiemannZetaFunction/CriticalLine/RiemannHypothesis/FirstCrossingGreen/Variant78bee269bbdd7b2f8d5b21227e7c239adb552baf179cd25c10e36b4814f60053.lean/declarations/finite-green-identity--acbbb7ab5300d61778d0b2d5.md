# finite_green_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8373d73-b99f-364b-2485-361c7c75aa6b",
  "kind": "theorem",
  "lexical_name": "finite_green_identity",
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
  "slug": "finite-green-identity--acbbb7ab5300d61778d0b2d5",
  "source": {
    "blob": "815565d4e53bec3a190445cbc1dd0b68de654268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingGreen/Variant78bee269bbdd7b2f8d5b21227e7c239adb552baf179cd25c10e36b4814f60053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acbbb7ab5300d61778d0b2d50d8faff610140744c16fa58bb788261110e158a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingGreen/Variant78bee269bbdd7b2f8d5b21227e7c239adb552baf179cd25c10e36b4814f60053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8373d73-b99f-364b-2485-361c7c75aa6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_green_identity (B S : ℕ → ℝ) (N : ℕ) (hS : S N = 0) :
    profileWork B S N =
      (∑ j ∈ Finset.range N, B j * (S j - S (j + 1))) - B 0 * S 0 := by
  have h := suffix_summation_by_parts B S N
  have he : (∑ j ∈ Finset.range N, B j * (S (j + 1) - S j)) =
      -(∑ j ∈ Finset.range N, B j * (S j - S (j + 1))) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro j _hj
    ring
  rw [he, hS] at h
  simp only [zero_sub, mul_neg, Finset.sum_neg_distrib] at h
  unfold profileWork
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingGreen/Variant78bee269bbdd7b2f8d5b21227e7c239adb552baf179cd25c10e36b4814f60053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingGreen/Variant78bee269bbdd7b2f8d5b21227e7c239adb552baf179cd25c10e36b4814f60053.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815565d4e53bec3a190445cbc1dd0b68de654268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
