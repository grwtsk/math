# integral_cos_pow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e2c41e2ff40abda20a9e7750c685cadd853de14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf282776-3a99-ce44-d462-e9347dcaa5f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44a8658b-2fcf-54fb-49aa-6fbe369ae99c",
  "kind": "theorem",
  "lexical_name": "integral_cos_pow_eq",
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
  "slug": "integral-cos-pow-eq--03786c2707b43ad87bfd75e9",
  "source": {
    "blob": "7e2c41e2ff40abda20a9e7750c685cadd853de14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03786c2707b43ad87bfd75e930cfffab47d19aed79d9c3241884cc24c42ace66",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44a8658b-2fcf-54fb-49aa-6fbe369ae99c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_cos_pow_eq (n : ℕ) :
    (∫ x in (0 : ℝ)..π / 2, cos x ^ n) = 1 / 2 * ∫ x in (0 : ℝ)..π, sin x ^ n := by
  rw [mul_comm (1 / 2 : ℝ), ← div_eq_iff (one_div_ne_zero (two_ne_zero' ℝ)), ← div_mul, div_one,
    mul_two]
  have L : IntervalIntegrable _ volume 0 (π / 2) := (continuous_sin.pow n).intervalIntegrable _ _
  have R : IntervalIntegrable _ volume (π / 2) π := (continuous_sin.pow n).intervalIntegrable _ _
  rw [← integral_add_adjacent_intervals L R]
  congr 1
  · nth_rw 1 [(by ring : 0 = π / 2 - π / 2)]
    nth_rw 3 [(by ring : π / 2 = π / 2 - 0)]
    rw [← integral_comp_sub_left]
    refine integral_congr fun x _ => ?_
    rw [cos_pi_div_two_sub]
  · nth_rw 3 [(by ring : π = π / 2 + π / 2)]
    nth_rw 2 [(by ring : π / 2 = 0 + π / 2)]
    rw [← integral_comp_add_right]
    refine integral_congr fun x _ => ?_
    rw [sin_add_pi_div_two]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2c41e2ff40abda20a9e7750c685cadd853de14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
