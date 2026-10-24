# norm_fourierPowSMulRight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:111f6ebe-9836-7386-aa5b-5ecfa3eb02d0",
  "kind": "lemma",
  "lexical_name": "norm_fourierPowSMulRight_le",
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
  "slug": "norm-fourierpowsmulright-le--1667542065f8bdcf17828490",
  "source": {
    "blob": "0c09287ffc79cc80115f3e70237dffca6ab50a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 330,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1667542065f8bdcf17828490e60ac11d28b638129acd1f693f8efa1bc66111c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111f6ebe-9836-7386-aa5b-5ecfa3eb02d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_fourierPowSMulRight_le (f : V → E) (v : V) (n : ℕ) :
    ‖fourierPowSMulRight L f v n‖ ≤ (2 * π * ‖L‖) ^ n * ‖v‖ ^ n * ‖f v‖ := by
  apply ContinuousMultilinearMap.opNorm_le_bound (by positivity) (fun m ↦ ?_)
  calc
  ‖fourierPowSMulRight L f v n m‖
    = (2 * π) ^ n * ((∏ x : Fin n, |(L v) (m x)|) * ‖f v‖) := by
      simp [abs_of_nonneg pi_nonneg, norm_smul]
  _ ≤ (2 * π) ^ n * ((∏ x : Fin n, ‖L‖ * ‖v‖ * ‖m x‖) * ‖f v‖) := by
      gcongr with i _hi
      exact L.le_opNorm₂ v (m i)
  _ = (2 * π * ‖L‖) ^ n * ‖v‖ ^ n * ‖f v‖ * ∏ i : Fin n, ‖m i‖ := by
      simp [Finset.prod_mul_distrib, mul_pow]; ring

/-- The iterated derivative of a function multiplied by `(L v ⬝) ^ n` can be controlled in terms
of the iterated derivatives of the initial function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c09287ffc79cc80115f3e70237dffca6ab50a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
