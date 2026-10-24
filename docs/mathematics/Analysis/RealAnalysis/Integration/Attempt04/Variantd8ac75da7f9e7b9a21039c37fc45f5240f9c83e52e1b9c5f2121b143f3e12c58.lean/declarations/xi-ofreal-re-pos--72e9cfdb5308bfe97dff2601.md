# xi_ofReal_re_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b544d298-8465-9ed8-d5d5-e11a077d50a2",
  "kind": "theorem",
  "lexical_name": "xi_ofReal_re_pos",
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
  "slug": "xi-ofreal-re-pos--72e9cfdb5308bfe97dff2601",
  "source": {
    "blob": "a3cbc03fb36983a461f3f37f7699a39500aea5b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72e9cfdb5308bfe97dff2601d6e50173e940b41fdcfeee45e949fbb0c22efab1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b544d298-8465-9ed8-d5d5-e11a077d50a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_ofReal_re_pos {σ : ℝ} (hσ : 0 < σ) (h1 : σ < 1) :
    0 < (XiToeplitz.xi (σ : ℂ)).re := by
  rw [xi_real_euler hσ (ne_of_lt h1), ofReal_re]
  have hz : σ / (σ - 1) - σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u < 0 := by
    simpa only [riemannZeta_real_euler hσ (ne_of_lt h1), ofReal_re] using
      riemannZeta_ofReal_neg hσ h1
  have hp : σ * (σ - 1) * realGammaR σ / 2 < 0 :=
    div_neg_of_neg_of_pos (mul_neg_of_neg_of_pos
      (mul_neg_of_pos_of_neg hσ (by linarith)) (realGammaR_pos hσ)) (by norm_num)
  exact mul_pos_of_neg_of_neg hp hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3cbc03fb36983a461f3f37f7699a39500aea5b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
