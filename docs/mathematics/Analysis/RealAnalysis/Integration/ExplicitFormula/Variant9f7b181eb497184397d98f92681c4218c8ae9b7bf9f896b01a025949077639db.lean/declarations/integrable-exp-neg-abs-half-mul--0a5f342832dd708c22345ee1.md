# integrable_exp_neg_abs_half_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1934517-ace1-846c-cb15-a84b2dfc6acc",
  "kind": "theorem",
  "lexical_name": "integrable_exp_neg_abs_half_mul",
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
  "slug": "integrable-exp-neg-abs-half-mul--0a5f342832dd708c22345ee1",
  "source": {
    "blob": "b11805266fa0912a0a3fc34dcca5b5413e43294b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 438,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a5f342832dd708c22345ee1aab8e1c76425738c81ddfe7c576f37a65ee52a34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1934517-ace1-846c-cb15-a84b2dfc6acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_exp_neg_abs_half_mul (τ : ℝ) :
    Integrable (fun u : ℝ => (Real.exp (-|u| / 2) : ℂ) * cexp (-I * τ * u)) := by
  have hIic : IntegrableOn (fun u : ℝ => cexp ((1 / 2 - I * τ) * u)) (Iic 0) :=
    integrableOn_exp_mul_complex_Iic (by simp) 0
  have hIoi : IntegrableOn (fun u : ℝ => cexp ((-(1 / 2) - I * τ) * u)) (Ioi 0) :=
    integrableOn_exp_mul_complex_Ioi (by norm_num) 0
  have eIic : EqOn (fun u : ℝ => (Real.exp (-|u| / 2) : ℂ) * cexp (-I * τ * u))
      (fun u : ℝ => cexp ((1 / 2 - I * τ) * u)) (Iic 0) := by
    intro u hu
    simp only [mem_Iic] at hu
    simp only [abs_of_nonpos hu, Complex.ofReal_exp, ← Complex.exp_add]
    congr 1; push_cast; ring
  have eIoi : EqOn (fun u : ℝ => (Real.exp (-|u| / 2) : ℂ) * cexp (-I * τ * u))
      (fun u : ℝ => cexp ((-(1 / 2) - I * τ) * u)) (Ioi 0) := by
    intro u hu
    simp only [mem_Ioi] at hu
    simp only [abs_of_pos hu, Complex.ofReal_exp, ← Complex.exp_add]
    congr 1; push_cast; ring
  have := (hIic.congr_fun eIic.symm measurableSet_Iic).union
    (hIoi.congr_fun eIoi.symm measurableSet_Ioi)
  rwa [Iic_union_Ioi, integrableOn_univ] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11805266fa0912a0a3fc34dcca5b5413e43294b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
