# xiDeriv_eq_of_re_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3cf3101f93dfcf07bb85e48e647927410a6ff1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe9b87d0-79aa-7eeb-1fbc-14aa1e5ca164",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c8ed0b4-2403-dc47-2b07-8da57fa2a321",
  "kind": "theorem",
  "lexical_name": "xiDeriv_eq_of_re_pos",
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
  "slug": "xideriv-eq-of-re-pos--190a16738cb1785c3f6a45ad",
  "source": {
    "blob": "f3cf3101f93dfcf07bb85e48e647927410a6ff1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 292,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:190a16738cb1785c3f6a45adc91be5376b1f51a73e448024de650a8ce0594dc0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c8ed0b4-2403-dc47-2b07-8da57fa2a321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiDeriv_eq_of_re_pos {s : ℂ} (hs : 0 < s.re) (hs1 : s ≠ 1) :
    xiDeriv s = ((2 * s - 1) / 2 * Gammaℝ s + s * (s - 1) / 2 * deriv Gammaℝ s) * riemannZeta s
      + s * (s - 1) / 2 * Gammaℝ s * deriv riemannZeta s := by
  have hopen : IsOpen ({z : ℂ | 0 < z.re} ∩ {(1 : ℂ)}ᶜ) :=
    (isOpen_lt continuous_const Complex.continuous_re).inter isOpen_compl_singleton
  have hev : xi =ᶠ[𝓝 s] fun z => z * (z - 1) / 2 * (Gammaℝ z * riemannZeta z) := by
    filter_upwards [hopen.mem_nhds ⟨hs, hs1⟩] with z hz
    exact xi_eq_Gammaℝ_mul_zeta hz.1 hz.2
  unfold xiDeriv
  rw [hev.deriv_eq]
  have h1 : HasDerivAt (fun z : ℂ => z * (z - 1) / 2) ((2 * s - 1) / 2) s := by
    have := ((hasDerivAt_id s).mul ((hasDerivAt_id s).sub_const 1)).div_const 2
    exact this.congr_deriv (by simp only [id_eq]; ring)
  have h2 : HasDerivAt Gammaℝ (deriv Gammaℝ s) s := (Zeta23.WeilEF.differentiableAt_Gammaℝ hs).hasDerivAt
  have h3 : HasDerivAt riemannZeta (deriv riemannZeta s) s :=
    (differentiableAt_riemannZeta hs1).hasDerivAt
  have h : HasDerivAt (fun z : ℂ => z * (z - 1) / 2 * (Gammaℝ z * riemannZeta z))
      ((2 * s - 1) / 2 * (Gammaℝ s * riemannZeta s)
        + s * (s - 1) / 2 * (deriv Gammaℝ s * riemannZeta s + Gammaℝ s * deriv riemannZeta s)) s :=
    h1.mul (h2.mul h3)
  rw [h.deriv]
  ring

/-- ξ′ = Γℝ · Y on Re s > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3cf3101f93dfcf07bb85e48e647927410a6ff1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
