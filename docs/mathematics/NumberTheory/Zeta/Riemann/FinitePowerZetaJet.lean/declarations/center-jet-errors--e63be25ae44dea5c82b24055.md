# center_jet_errors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1889713c-3ff4-105f-cf78-f1e035d72277",
  "kind": "theorem",
  "lexical_name": "center_jet_errors",
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
  "slug": "center-jet-errors--e63be25ae44dea5c82b24055",
  "source": {
    "blob": "f6efc38233d9567d21957251a9a87ad84430cf46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e63be25ae44dea5c82b24055019f637cc249da9eccf8b7081ddd0564196e92ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1889713c-3ff4-105f-cf78-f1e035d72277`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem center_jet_errors {N : ℕ} {c v d : ℂ} {S σ δ B ε₀ ε₁ : ℝ}
    (hN : 1 ≤ N) (hS : 0 < S) (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ) (hB : ‖c‖ + S ≤ B)
    (hv : ‖model N c - v‖ ≤ ε₀) (hd : ‖deriv (model N) c - d‖ ≤ ε₁) :
    ‖riemannZeta c - v‖ ≤ B * ((N : ℝ) ^ (-σ) / σ) + ε₀ ∧
    ‖deriv riemannZeta c - d‖ ≤ (B * ((N : ℝ) ^ (-σ) / σ)) / S + ε₁ := by
  have hval := source_error_on_disk hN hσ hδ hleft hright hB c (mem_closedBall_self hS.le)
  have hder := derivative_source_error hN hS hσ hδ hleft hright hB
  constructor
  · calc
      _ = ‖(riemannZeta c - model N c) + (model N c - v)‖ := by congr 1; ring
      _ ≤ ‖riemannZeta c - model N c‖ + ‖model N c - v‖ := norm_add_le _ _
      _ ≤ _ := add_le_add hval hv
  · calc
      _ = ‖(deriv riemannZeta c - deriv (model N) c) + (deriv (model N) c - d)‖ := by
        congr 1; ring
      _ ≤ ‖deriv riemannZeta c - deriv (model N) c‖ + ‖deriv (model N) c - d‖ := norm_add_le _ _
      _ ≤ _ := add_le_add hder hd

end
end GRWTSK.RiemannHypothesis.FinitePowerZetaJet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6efc38233d9567d21957251a9a87ad84430cf46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
