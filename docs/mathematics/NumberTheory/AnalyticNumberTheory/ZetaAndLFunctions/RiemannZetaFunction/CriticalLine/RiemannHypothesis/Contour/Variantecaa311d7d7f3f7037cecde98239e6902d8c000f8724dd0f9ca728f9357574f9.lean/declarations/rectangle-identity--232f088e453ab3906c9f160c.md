# rectangle_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c331205-34cc-f3b0-9b02-36350ba7ea7d",
  "kind": "theorem",
  "lexical_name": "rectangle_identity",
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
  "slug": "rectangle-identity--232f088e453ab3906c9f160c",
  "source": {
    "blob": "90aa2daf2b5d700fc7c7869bc7ef9ccd8a630643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:232f088e453ab3906c9f160c00e017552e9d885760e750e1f6fb159a11c8ac90",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c331205-34cc-f3b0-9b02-36350ba7ea7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_identity (hF2 : XiDerivZerosInStrip) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) {c : ℝ} (hc1 : 1 < c) {R : ℝ} (hR : 0 ≤ R)
    (hgood : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 - c ≤ s.re → s.re ≤ c → xiDeriv s ≠ 0) :
    ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ : ℂ | IsXiDerivZero ρ ∧ -R < ρ.im ∧ ρ.im < R}) ∧
      RectangleIntegral' (fun s => Hfn k s * logDeriv xiDeriv s)
          (((1 - c : ℝ) : ℂ) - R * I) ((c : ℝ) + R * I)
        = ∑ ρ ∈ Z, (xiDerivMult ρ : ℂ) * Hfn k ρ :=
  rectangle_identity_of xiDeriv_differentiable (differentiable_Hfn hk hkc) (by linarith)
    (Zset := {ρ : ℂ | IsXiDerivZero ρ}) (fun _ => Iff.rfl)
    (fun ρ hρ => by
      have h := hF2 ρ hρ
      constructor <;> linarith [h.1, h.2])
    hR hgood

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantecaa311d7d7f3f7037cecde98239e6902d8c000f8724dd0f9ca728f9357574f9.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90aa2daf2b5d700fc7c7869bc7ef9ccd8a630643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
