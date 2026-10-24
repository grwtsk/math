# curveIntegral_coefficientOneForm_homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52b80aac-8ec7-9bf1-be73-0fa8a5794838",
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
  "slug": "curveintegral-coefficientoneform-homotopy--63df195ce38f233f4946cf2a",
  "source": {
    "blob": "c0476bf875c0decd12ae9ebd0727d6a051bb64ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 45,
    "path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63df195ce38f233f4946cf2acce33d88c1e2e582f12b5c08abec52acfd5c02de",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52b80aac-8ec7-9bf1-be73-0fa8a5794838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–86.

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

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0476bf875c0decd12ae9ebd0727d6a051bb64ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
