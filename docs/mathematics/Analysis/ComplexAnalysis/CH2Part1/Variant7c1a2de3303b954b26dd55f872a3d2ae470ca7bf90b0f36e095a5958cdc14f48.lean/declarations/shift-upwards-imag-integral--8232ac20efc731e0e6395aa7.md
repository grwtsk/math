# shift_upwards_imag_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3459,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e15e0808-b106-1937-3562-54a2aebc5b06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f1d6170-9d34-bd93-06b8-cdd95c99f897",
  "kind": "lemma",
  "lexical_name": "shift_upwards_imag_integral",
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
  "slug": "shift-upwards-imag-integral--8232ac20efc731e0e6395aa7",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3480,
    "line": 3459,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8232ac20efc731e0e6395aa775c5cdfb518e496bdbdeacd51a18bf636eb76c3f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f1d6170-9d34-bd93-06b8-cdd95c99f897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3459–3480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma shift_upwards_imag_integral (ν ε x T : ℝ) :
    I * ∫ t in Set.Icc 0 T, Phi_star ν ε (I * ↑t) * E (-(I * ↑t) * ↑x)
    = (1 / (2 * ↑π)) *
      ∫ t in Set.Icc 0 T,
        (B ε ↑(2 * π * t + ν) - B ε ↑ν) * ↑(Real.exp (2 * π * x * t)) := by
  have h_Phi_star_imag (t : ℝ) :
      Phi_star ν ε (I * ↑t) = (B ε ↑(2 * π * t + ν) - B ε ↑ν) / (2 * ↑π * I) := by
    simp only [Phi_star]; congr; push_cast; ring_nf; simp [Complex.I_sq]
  have h_E_imag (t : ℝ) : E (-(I * ↑t) * ↑x) = ↑(Real.exp (2 * π * x * t)) := by
    simp only [E]; push_cast; ring_nf; congr; simp
  simp_rw [h_Phi_star_imag, h_E_imag]
  set f : ℝ → ℂ := fun t ↦ (B ε ↑(2 * π * t + ν) - B ε ↑ν) * ↑(rexp (2 * π * x * t))
  rw [show (I * ∫ t in Set.Icc 0 T, (B ε ↑(2 * π * t + ν) - B ε ↑ν) / (2 * ↑π * I) *
          ↑(rexp (2 * π * x * t))) = ∫ t in Set.Icc 0 T, I * ((B ε ↑(2 * π * t + ν) -
          B ε ↑ν) / (2 * ↑π * I) * ↑(rexp (2 * π * x * t))) from
    (MeasureTheory.integral_const_mul _ _).symm]
  rw [show ((1 : ℂ) / (2 * ↑π)) * ∫ t in Set.Icc 0 T, f t = ∫ t in Set.Icc 0 T,
      ((1 : ℂ) / (2 * ↑π)) * f t from (MeasureTheory.integral_const_mul _ _).symm]
  congr 1; ext t
  field_simp [Complex.I_ne_zero, Real.pi_pos.ne.symm]
  unfold f; ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L3459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
