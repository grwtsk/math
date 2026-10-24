# rect'_lincomb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99348cf5-ef53-137a-c651-5dcf7c3e6b5f",
  "kind": "lemma",
  "lexical_name": "rect'_lincomb",
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
  "slug": "rect-lincomb--544ac92675f215bbebd9a81d",
  "source": {
    "blob": "8afe5c752e7ee61c4c9c658b1e153f47d630cba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 359,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:544ac92675f215bbebd9a81dcbdfeef62c3d1183a414be0287ae22c937e04b8f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99348cf5-ef53-137a-c651-5dcf7c3e6b5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rect'_lincomb {z w : ℂ} {φ₁ φ₂ φ₃ φ₄ : ℂ → ℂ} (a₁ a₂ a₃ a₄ : ℂ)
    (h₁ : RectangleBorderIntegrable (fun s => Hfn k s * φ₁ s) z w)
    (h₂ : RectangleBorderIntegrable (fun s => Hfn k s * φ₂ s) z w)
    (h₃ : RectangleBorderIntegrable (fun s => Hfn k s * φ₃ s) z w)
    (h₄ : RectangleBorderIntegrable (fun s => Hfn k s * φ₄ s) z w) :
    RectangleIntegral' (fun s => Hfn k s * (a₁ * φ₁ s + a₂ * φ₂ s + a₃ * φ₃ s + a₄ * φ₄ s)) z w
      = a₁ * RectangleIntegral' (fun s => Hfn k s * φ₁ s) z w + a₂ * RectangleIntegral' (fun s => Hfn k s * φ₂ s) z w
        + a₃ * RectangleIntegral' (fun s => Hfn k s * φ₃ s) z w + a₄ * RectangleIntegral' (fun s => Hfn k s * φ₄ s) z w := by
  -- scalar multiples are border-integrable
  have hsm : ∀ (a : ℂ) (φ : ℂ → ℂ), RectangleBorderIntegrable (fun s => Hfn k s * φ s) z w →
      RectangleBorderIntegrable (fun s => a • (Hfn k s * φ s)) z w := by
    intro a φ h
    exact ⟨h.1.smul a, h.2.1.smul a, h.2.2.1.smul a, h.2.2.2.smul a⟩
  have e : (fun s => Hfn k s * (a₁ * φ₁ s + a₂ * φ₂ s + a₃ * φ₃ s + a₄ * φ₄ s))
      = (((fun s => a₁ • (Hfn k s * φ₁ s)) + (fun s => a₂ • (Hfn k s * φ₂ s)))
          + (fun s => a₃ • (Hfn k s * φ₃ s))) + (fun s => a₄ • (Hfn k s * φ₄ s)) := by
    funext s; simp only [Pi.add_apply, smul_eq_mul]; ring
  have hadd12 : RectangleBorderIntegrable ((fun s => a₁ • (Hfn k s * φ₁ s)) + (fun s => a₂ • (Hfn k s * φ₂ s))) z w := by
    obtain ⟨b1, b2, b3, b4⟩ := hsm a₁ φ₁ h₁; obtain ⟨c1, c2, c3, c4⟩ := hsm a₂ φ₂ h₂
    exact ⟨b1.add c1, b2.add c2, b3.add c3, b4.add c4⟩
  have hadd123 : RectangleBorderIntegrable (((fun s => a₁ • (Hfn k s * φ₁ s)) + (fun s => a₂ • (Hfn k s * φ₂ s)))
      + (fun s => a₃ • (Hfn k s * φ₃ s))) z w := by
    obtain ⟨b1, b2, b3, b4⟩ := hadd12; obtain ⟨c1, c2, c3, c4⟩ := hsm a₃ φ₃ h₃
    exact ⟨b1.add c1, b2.add c2, b3.add c3, b4.add c4⟩
  rw [e, RectangleIntegral', RectangleBorderIntegrable.add hadd123 (hsm a₄ φ₄ h₄),
    RectangleBorderIntegrable.add hadd12 (hsm a₃ φ₃ h₃), RectangleBorderIntegrable.add (hsm a₁ φ₁ h₁) (hsm a₂ φ₂ h₂),
    RectangleIntegral.const_smul, RectangleIntegral.const_smul, RectangleIntegral.const_smul,
    RectangleIntegral.const_smul]
  simp only [RectangleIntegral', smul_eq_mul]
  ring

/-- **(1/2πi)∮ H·(Lfn − L₂) = ½(H(0) + H(1)).** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afe5c752e7ee61c4c9c658b1e153f47d630cba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
