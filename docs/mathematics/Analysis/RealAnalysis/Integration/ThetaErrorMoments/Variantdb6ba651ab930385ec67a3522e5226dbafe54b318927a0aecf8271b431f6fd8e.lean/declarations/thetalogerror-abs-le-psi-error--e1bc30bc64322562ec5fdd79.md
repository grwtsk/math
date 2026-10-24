# thetaLogError_abs_le_psi_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50f9219d73a14d76665463c39fdb274862f1f669",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0525dff4-44b8-9247-2376-2bf5258e50f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aad8d1a4-adfa-8e8b-7c92-9d025a654e21",
  "kind": "theorem",
  "lexical_name": "thetaLogError_abs_le_psi_error",
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
  "slug": "thetalogerror-abs-le-psi-error--e1bc30bc64322562ec5fdd79",
  "source": {
    "blob": "50f9219d73a14d76665463c39fdb274862f1f669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1bc30bc64322562ec5fdd795f39a6395380e809ae79d2c43d3ba11cf5382c04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aad8d1a4-adfa-8e8b-7c92-9d025a654e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaLogError_abs_le_psi_error (u : ℝ) (hu : 0 ≤ u) :
    |thetaLogError u| ≤ |errorProfile u| * Real.exp (-u) +
      2 * u * Real.exp (-u / 2) := by
  have ht := Chebyshev.abs_psi_sub_theta_le_sqrt_mul_log
    (Real.one_le_exp_iff.mpr hu)
  rw [Real.log_exp, ← Real.exp_half] at ht
  have hb : |Chebyshev.theta (Real.exp u) - Real.exp u| ≤
      |errorProfile u| + 2 * Real.exp (u / 2) * u := by
    calc
      _ = |(Chebyshev.psi (Real.exp u) - Real.exp u) -
        (Chebyshev.psi (Real.exp u) - Chebyshev.theta (Real.exp u))| := by congr 1; ring
      _ ≤ |Chebyshev.psi (Real.exp u) - Real.exp u| +
        |Chebyshev.psi (Real.exp u) - Chebyshev.theta (Real.exp u)| := abs_sub _ _
      _ ≤ _ := by
        rw [errorProfile, chebyshevError_eq_psi_sub]
        exact add_le_add le_rfl ht
  rw [thetaLogError_eq, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (|errorProfile u| + 2 * Real.exp (u / 2) * u) * Real.exp (-u) :=
      mul_le_mul_of_nonneg_right hb (Real.exp_pos _).le
    _ = _ := by
      rw [add_mul]
      congr 1
      calc
        _ = 2 * u * (Real.exp (u / 2) * Real.exp (-u)) := by ring
        _ = _ := by rw [← Real.exp_add]; congr 2; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f9219d73a14d76665463c39fdb274862f1f669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
