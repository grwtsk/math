# model_projection_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23bbc760-50fd-f2f3-e1c7-3d87ed2c491d",
  "kind": "theorem",
  "lexical_name": "model_projection_lower",
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
  "slug": "model-projection-lower--6e2661099e84830bbee48159",
  "source": {
    "blob": "7f7d728a85d519000512f007851eddef03b1339b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e2661099e84830bbee481598e1b79ea37533ca0ef070c9908c04cff28a29e4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23bbc760-50fd-f2f3-e1c7-3d87ed2c491d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem model_projection_lower {s : ℂ} (hs : Band s) :
    (3 / 2 : ℝ) ≤ (model s).re + (model s).im := by
  rcases hs with ⟨hx, hx1, ht, ht1⟩
  have h := tensorValue_nonneg coefficients
    (by linarith : 0 ≤ 2 * s.re - 1) (by linarith : 2 * s.re - 1 ≤ 1)
    (by linarith : 0 ≤ s.im - 13) (by linarith : s.im - 13 ≤ 1)
  rw [tensor_identity] at h
  have heq : (⟨(1 + (2 * s.re - 1)) / 2, 13 + (s.im - 13)⟩ : ℂ) = s := by
    apply Complex.ext <;> dsimp <;> ring
  rw [heq, gap] at h
  linarith

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffFour.Certificate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f7d728a85d519000512f007851eddef03b1339b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
