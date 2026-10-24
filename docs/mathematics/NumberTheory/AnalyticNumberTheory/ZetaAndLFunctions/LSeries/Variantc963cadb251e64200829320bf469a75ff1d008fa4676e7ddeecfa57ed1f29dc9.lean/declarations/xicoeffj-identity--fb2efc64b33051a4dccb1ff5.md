# xiCoeffJ_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da9c0a5732be3b22f84ae924d4f18e9332658251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eff455c-1e81-a0ff-0a65-f60c92b030ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:022be9a3-d404-8e00-e6ac-e661f03c1e30",
  "kind": "theorem",
  "lexical_name": "xiCoeffJ_identity",
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
  "slug": "xicoeffj-identity--fb2efc64b33051a4dccb1ff5",
  "source": {
    "blob": "da9c0a5732be3b22f84ae924d4f18e9332658251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb2efc64b33051a4dccb1ff5dce99c2c9ab4235c0357f6464afb311201a61d8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:022be9a3-d404-8e00-e6ac-e661f03c1e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiCoeffJ_identity {Λs : ℂ} (hΛ : Λs ≠ 0) (N : ℕ) :
    Λs * xiCoeffJ Λs N - (lamC ⍟ xiCoeffJ Λs) N = lamLogC N := by
  rw [lamC_conv_xiCoeffJ]
  unfold xiCoeffJ
  rw [mul_sum]
  have h1 : ∀ j ∈ Finset.range (Ω N),
      Λs * ((Λs⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ)) = (Λs⁻¹) ^ j * ((lamLogConv j N : ℝ) : ℂ) := by
    intro j _
    calc Λs * ((Λs⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ))
        = (Λs * Λs⁻¹) * ((Λs⁻¹) ^ j * ((lamLogConv j N : ℝ) : ℂ)) := by rw [pow_succ]; ring
      _ = (Λs⁻¹) ^ j * ((lamLogConv j N : ℝ) : ℂ) := by rw [mul_inv_cancel₀ hΛ, one_mul]
  rw [sum_congr rfl h1, ← sum_sub_distrib,
    Finset.sum_range_sub' (fun j => (Λs⁻¹) ^ j * ((lamLogConv j N : ℝ) : ℂ)),
    lamLogConv_eq_zero_of_le (le_refl (Ω N)), lamLogConv_zero_apply]
  simp [lamLogC]

/-- the identity as an equality of sequences:  Λ·log = Λ⋆•C_J − Λ ∗ C_J. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da9c0a5732be3b22f84ae924d4f18e9332658251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
