# tilted_const'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34cdd609-b7bc-813a-ed8f-d7f4b4e8f75a",
  "kind": "lemma",
  "lexical_name": "tilted_const'",
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
  "slug": "tilted-const--ac9f09c19697303cbd36861d",
  "source": {
    "blob": "204629feb7439c95a384b217e77a057cf8158cfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac9f09c19697303cbd36861d7a10e902b3817bec6b8a4a88ff0a0e8025bf4e85",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34cdd609-b7bc-813a-ed8f-d7f4b4e8f75a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tilted_const' (μ : Measure α) (c : ℝ) :
    μ.tilted (fun _ ↦ c) = (μ Set.univ)⁻¹ • μ := by
  cases eq_zero_or_neZero μ with
  | inl h => rw [h]; simp
  | inr h0 =>
    simp only [Measure.tilted, withDensity_const, integral_const, smul_eq_mul]
    by_cases h_univ : μ Set.univ = ∞
    · simp only [measureReal_def, h_univ, ENNReal.toReal_top, zero_mul, div_zero,
      ENNReal.ofReal_zero, zero_smul, ENNReal.inv_top]
    congr
    rw [div_eq_mul_inv, mul_inv, mul_comm, mul_assoc, inv_mul_cancel₀ (exp_pos _).ne', mul_one,
      measureReal_def, ← ENNReal.toReal_inv, ENNReal.ofReal_toReal]
    simp [h0.out]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `204629feb7439c95a384b217e77a057cf8158cfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
