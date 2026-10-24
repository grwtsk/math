# region_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2ea7e47-dd23-d089-49cc-41d6605b78cb",
  "kind": "lemma",
  "lexical_name": "region_distance",
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
  "slug": "region-distance--67205f4a36ad34e1dcb51458",
  "source": {
    "blob": "58b659fdd4811b8e9d0ac115dd75ca486fc3191b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 241,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67205f4a36ad34e1dcb5145819a8ecc5edcf1f83384cfc74861cde84295f9000",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ea7e47-dd23-d089-49cc-41d6605b78cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma region_distance {s : ℂ} (hs : Region s) : ‖s-center‖ ≤ (3/4 : ℝ) := by
  have hr : |s.re-1/2| ≤ (1/2 : ℝ) := abs_le.mpr ⟨by linarith [hs.1], by linarith [hs.2.1]⟩
  have hi : |s.im-29/2| ≤ (1/2 : ℝ) := abs_le.mpr
    ⟨by linarith [hs.2.2.1], by linarith [hs.2.2.2]⟩
  have hr2 := mul_le_mul hr hr (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1/2)
  have hi2 := mul_le_mul hi hi (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1/2)
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 3/4)).mp
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [Complex.sub_re, Complex.sub_im, center, Complex.mk_re, Complex.mk_im]
  nlinarith [sq_abs (s.re-1/2), sq_abs (s.im-29/2)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b659fdd4811b8e9d0ac115dd75ca486fc3191b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
