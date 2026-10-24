# quadratic_root_cos_pi_div_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5eff052333541ad7bcf8a1e19037cac3d154ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 794,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07610e09-fbfa-5d97-c256-d371dde2a9bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35728288-b3f7-5a24-799a-0eee3ddff681",
  "kind": "theorem",
  "lexical_name": "quadratic_root_cos_pi_div_five",
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
  "slug": "quadratic-root-cos-pi-div-five--da6cc70ec38b51fcd44d5857",
  "source": {
    "blob": "a5eff052333541ad7bcf8a1e19037cac3d154ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 818,
    "line": 794,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da6cc70ec38b51fcd44d5857d40fae32e3052ab6ab98a7f1ee7f321c3519032b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35728288-b3f7-5a24-799a-0eee3ddff681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–818.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_root_cos_pi_div_five :
    letI c := cos (π / 5)
    4 * c ^ 2 - 2 * c - 1 = 0 := by
  set θ := π / 5 with hθ
  set c := cos θ
  set s := sin θ
  suffices 2 * c = 4 * c ^ 2 - 1 by simp [this]
  have hs : s ≠ 0 := by
    rw [ne_eq, sin_eq_zero_iff, hθ]
    push_neg
    intro n hn
    replace hn : n * 5 = 1 := by field_simp [mul_comm _ π, mul_assoc] at hn; norm_cast at hn
    omega
  suffices s * (2 * c) = s * (4 * c ^ 2 - 1) from mul_left_cancel₀ hs this
  calc s * (2 * c) = 2 * s * c := by rw [← mul_assoc, mul_comm 2]
                 _ = sin (2 * θ) := by rw [sin_two_mul]
                 _ = sin (π - 2 * θ) := by rw [sin_pi_sub]
                 _ = sin (2 * θ + θ) := by congr; field_simp [hθ]; linarith
                 _ = sin (2 * θ) * c + cos (2 * θ) * s := sin_add (2 * θ) θ
                 _ = 2 * s * c * c + cos (2 * θ) * s := by rw [sin_two_mul]
                 _ = 2 * s * c * c + (2 * c ^ 2 - 1) * s := by rw [cos_two_mul]
                 _ = s * (2 * c * c) + s * (2 * c ^ 2 - 1) := by linarith
                 _ = s * (4 * c ^ 2 - 1) := by linarith

open Polynomial in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5eff052333541ad7bcf8a1e19037cac3d154ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
