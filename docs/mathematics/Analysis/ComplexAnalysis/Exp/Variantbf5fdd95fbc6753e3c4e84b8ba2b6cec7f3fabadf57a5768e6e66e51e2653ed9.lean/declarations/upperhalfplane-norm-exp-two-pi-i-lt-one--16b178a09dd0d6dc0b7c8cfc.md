# UpperHalfPlane.norm_exp_two_pi_I_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e46bd0ff6338af2256b55d95076d4af24596342b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6c64be5-c5e1-8b62-40ca-ae7e43560ea0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07cb0b33-67c1-6aec-60f9-c68c75d049ea",
  "kind": "theorem",
  "lexical_name": "UpperHalfPlane.norm_exp_two_pi_I_lt_one",
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
  "slug": "upperhalfplane-norm-exp-two-pi-i-lt-one--16b178a09dd0d6dc0b7c8cfc",
  "source": {
    "blob": "e46bd0ff6338af2256b55d95076d4af24596342b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16b178a09dd0d6dc0b7c8cfc001c889b9c4d389a6b0673f165c128fbb724566b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07cb0b33-67c1-6aec-60f9-c68c75d049ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UpperHalfPlane.norm_exp_two_pi_I_lt_one (τ : ℍ) :
    ‖(Complex.exp (2 * π * Complex.I * τ))‖ < 1 := by
  simpa [Function.Periodic.norm_qParam, Complex.norm_exp] using τ.norm_qParam_lt_one 1

@[deprecated (since := "2025-02-17")] alias Function.Periodic.im_invQParam_pos_of_abs_lt_one :=
  Function.Periodic.im_invQParam_pos_of_norm_lt_one
@[deprecated (since := "2025-02-17")] alias Function.Periodic.abs_qParam_le_of_one_half_le_im :=
  Function.Periodic.norm_qParam_le_of_one_half_le_im
@[deprecated (since := "2025-02-17")] alias UpperHalfPlane.abs_qParam_lt_one :=
  UpperHalfPlane.norm_qParam_lt_one
@[deprecated (since := "2025-02-17")] alias UpperHalfPlane.abs_exp_two_pi_I_lt_one :=
  UpperHalfPlane.norm_exp_two_pi_I_lt_one
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46bd0ff6338af2256b55d95076d4af24596342b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
