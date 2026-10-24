# _root_.pow_mul_le_of_le_of_pow_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97ec26c2b3c796caa8e997a28d64d404f28af170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42cbcabb-00df-e97c-74cc-de674a52ccc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f0161a0-ddba-eded-9697-debff00736a7",
  "kind": "lemma",
  "lexical_name": "_root_.pow_mul_le_of_le_of_pow_mul_le",
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
  "slug": "root-pow-mul-le-of-le-of-pow-mul-le--c505d8167dac0deee599ec56",
  "source": {
    "blob": "97ec26c2b3c796caa8e997a28d64d404f28af170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 507,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c505d8167dac0deee599ec56d57be891a7bdb979423b5e20cf810861da6ef431",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f0161a0-ddba-eded-9697-debff00736a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.pow_mul_le_of_le_of_pow_mul_le {C₁ C₂ : ℝ} {k l : ℕ} {x f : ℝ} (hx : 0 ≤ x)
    (hf : 0 ≤ f) (h₁ : f ≤ C₁) (h₂ : x ^ (k + l) * f ≤ C₂) :
    x ^ k * f ≤ 2 ^ l * (C₁ + C₂) * (1 + x) ^ (- (l : ℝ)) := by
  have : 0 ≤ C₂ := le_trans (by positivity) h₂
  have : 2 ^ l * (C₁ + C₂) * (1 + x) ^ (- (l : ℝ)) = ((1 + x) / 2) ^ (-(l : ℝ)) * (C₁ + C₂) := by
    rw [Real.div_rpow (by positivity) zero_le_two]
    simp [div_eq_inv_mul, ← Real.rpow_neg_one, ← Real.rpow_mul]
    ring
  rw [this]
  rcases le_total x 1 with h'x | h'x
  · gcongr
    · apply (pow_le_one₀ hx h'x).trans
      apply Real.one_le_rpow_of_pos_of_le_one_of_nonpos
      · positivity
      · linarith
      · simp
    · linarith
  · calc
    x ^ k * f = x ^ (-(l : ℝ)) * (x ^ (k + l) * f) := by
      rw [← Real.rpow_natCast, ← Real.rpow_natCast, ← mul_assoc, ← Real.rpow_add (by positivity)]
      simp
    _ ≤ ((1 + x) / 2) ^ (-(l : ℝ)) * (C₁ + C₂) := by
      apply mul_le_mul _ _ (by positivity) (by positivity)
      · exact Real.rpow_le_rpow_of_nonpos (by positivity) (by linarith) (by simp)
      · exact h₂.trans (by linarith)

variable [NormedAddCommGroup F]

variable [BorelSpace E] [SecondCountableTopology E] in
/-- Given a function such that `f` and `x ^ (k + l) * f` are bounded for a suitable `l`, then
`x ^ k * f` is integrable. The bounds are not relevant for the integrability conclusion, but they
are relevant for bounding the integral in `integral_pow_mul_le_of_le_of_pow_mul_le`. We formulate
the two lemmas with the same set of assumptions for ease of applications. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ec26c2b3c796caa8e997a28d64d404f28af170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
