# jacobiTheta_S_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b97109d242791963454dc4d7a8385049595fa6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:143a0cc9-6020-61c5-af14-34bde986aeda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f1037c1-3511-ea1b-1074-e8b5c605a119",
  "kind": "theorem",
  "lexical_name": "jacobiTheta_S_smul",
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
  "slug": "jacobitheta-s-smul--44f992b6f7ba3dfa7f3094c6",
  "source": {
    "blob": "8b97109d242791963454dc4d7a8385049595fa6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44f992b6f7ba3dfa7f3094c62813636ab74283721ee9be42aab23bb1dc8ad30b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f1037c1-3511-ea1b-1074-e8b5c605a119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiTheta_S_smul (τ : ℍ) :
    jacobiTheta ↑(ModularGroup.S • τ) = (-I * τ) ^ (1 / 2 : ℂ) * jacobiTheta τ := by
  have h0 : (τ : ℂ) ≠ 0 := ne_of_apply_ne im (zero_im.symm ▸ ne_of_gt τ.2)
  have h1 : (-I * τ) ^ (1 / 2 : ℂ) ≠ 0 := by
    rw [Ne, cpow_eq_zero_iff, not_and_or]
    exact Or.inl <| mul_ne_zero (neg_ne_zero.mpr I_ne_zero) h0
  simp_rw [UpperHalfPlane.modular_S_smul, jacobiTheta_eq_jacobiTheta₂, ← ofReal_zero]
  norm_cast
  simp_rw [jacobiTheta₂_functional_equation 0 τ, zero_pow two_ne_zero, mul_zero, zero_div,
    Complex.exp_zero, mul_one, ← mul_assoc, mul_one_div, div_self h1, one_mul,
    UpperHalfPlane.coe_mk, inv_neg, neg_div, one_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant86f2b11ccb7064606761c3f252d06fe4718d059f2e4e5e88ba35646b739a2b9d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b97109d242791963454dc4d7a8385049595fa6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
