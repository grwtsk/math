# curveIntegral_coefficientOneForm_homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e394a0d1ef179a0ac7deef63053ac0cf2a781c25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7373ed36-83ae-6c70-88dc-b91527089de7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:437d0a56-645e-bb5e-3c0d-5c570e378ebf",
  "kind": "theorem",
  "lexical_name": "curveIntegral_coefficientOneForm_homotopy",
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
  "slug": "curveintegral-coefficientoneform-homotopy--3b2b63873336538de9635449",
  "source": {
    "blob": "e394a0d1ef179a0ac7deef63053ac0cf2a781c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 37,
    "path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b2b63873336538de9635449029303bed40ef9800679b93212e9d717fb05d26f",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:437d0a56-645e-bb5e-3c0d-5c570e378ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curveIntegral_coefficientOneForm_homotopy
    {a b c d : ℂ} {γ₁ : Path a b} {γ₂ : Path c d}
    {t : Set ℂ} {f : ℂ → ℂ}
    (φ : (γ₁ : C(I, ℂ)).Homotopy γ₂)
    (hφt : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ (x, y) ∈ t)
    (hd : DifferentiableOn ℂ f t)
    (hfc : ContinuousOn f (closure t))
    (hφsmooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ.extend xy.1) xy.2)
      (Icc 0 1)) :
    curveIntegral (coefficientOneForm f) γ₁ +
        curveIntegral (coefficientOneForm f) (φ.evalAt 1) =
    curveIntegral (coefficientOneForm f) γ₂ +
        curveIntegral (coefficientOneForm f) (φ.evalAt 0) := by
  let D : ℂ → ℂ →L[ℝ] ℂ →L[ℂ] ℂ := fun z ↦
    (ContinuousLinearMap.toSpanSingleton ℂ
      ((1 : ℂ →L[ℂ] ℂ).smulRight (derivWithin f t z))).restrictScalars ℝ
  apply φ.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt
    (dω := D) hφt
  · intro z hz
    simpa [coefficientOneForm, D] using
      ((ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1).hasFDerivAt
        |>.comp_hasDerivWithinAt z (hd z hz).hasDerivWithinAt
        |>.hasFDerivWithinAt |>.restrictScalars ℝ)
  · exact (ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1).continuous.comp_continuousOn hfc
  · intro z hz u hu v hv
    simp [D]
    ring
  · exact hφsmooth

/-- Four `C²` side-to-arc homotopies cancel their transverse seam paths.

The outer paths `o₀,...,o₃` and inner paths `i₀,...,i₃` are cyclically
oriented in the same direction.  Thus `φk.evalAt 1` is the outgoing radial
seam of cell `k`, while `φ(k+1).evalAt 0` is the same seam as the incoming
edge of the next cell.  The four `hseam` hypotheses are path-integral
identifications; in a concrete radial construction they follow by path
extensionality.

This theorem is the analytic-and-algebraic core of the proposed F2 bridge:
each cell is discharged by the checked Poincare theorem, not by a certificate
or a geometric-homology assertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e394a0d1ef179a0ac7deef63053ac0cf2a781c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
