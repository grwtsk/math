# native_full_terminal_tail_budget_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d46edfab-cc85-d4a5-fe79-d2185a7169e6",
  "kind": "theorem",
  "lexical_name": "native_full_terminal_tail_budget_iff",
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
  "slug": "native-full-terminal-tail-budget-iff--eef233323b54603cce06f90d",
  "source": {
    "blob": "1680f2a47df62daa3dd37a74019d2ec5ef7f9976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 296,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eef233323b54603cce06f90d1199d09093ac1fad1513959f0aeacaecff022aee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d46edfab-cc85-d4a5-fe79-d2185a7169e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_full_terminal_tail_budget_iff (R B : ℝ) (hR : 1 ≤ R) :
    (∀ A : ℝ, R ≤ A → combinedTerminalWork A + totalQuadraticWork A ≤ B) ↔
      ∀ s : SmallCoordinate, s.1 ≤ (R ^ 2)⁻¹ →
        smallRepresentation.recover .fullTerminal s ≤ B := by
  constructor
  · intro h s hs
    exact h (smallScaleEquiv.symm s).1 ((decoded_tail_iff ⟨R, hR⟩ s).mpr hs)
  · intro h A hRA
    have hA : 1 ≤ A := hR.trans hRA
    have hs : (smallScaleEquiv ⟨A, hA⟩).1 ≤ (R ^ 2)⁻¹ :=
      (scale_le_iff_smallCoordinate_le ⟨R, hR⟩ ⟨A, hA⟩).mp hRA
    have hb := h (smallScaleEquiv ⟨A, hA⟩) hs
    simpa only [smallRepresentation, smallScaleEquiv.symm_apply_apply, family] using hb

end FormalResearch.PositiveAtlas.CertificationSourceScale
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1680f2a47df62daa3dd37a74019d2ec5ef7f9976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
