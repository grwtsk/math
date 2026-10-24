# finiteModel_jet_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3efde2d-efaa-a3ff-fa9b-be764efda323",
  "kind": "lemma",
  "lexical_name": "finiteModel_jet_error",
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
  "slug": "finitemodel-jet-error--3de91d1016c98fbe7c2f62cf",
  "source": {
    "blob": "f9ee4e40b06ae8952b19c8082061dabbf4ac3664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3de91d1016c98fbe7c2f62cf8fc04491a4aa7798a62b2cca5caa29ed6be2f704",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3efde2d-efaa-a3ff-fa9b-be764efda323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finiteModel_jet_error {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖SexticPrimitive.finiteModel 8 s-sourcePolynomial s‖ ≤
      17*(∑ i : Fin 8, powerError i)+22*powerError 7 := by
  have hg := band_geometry hx hx1 ht ht1
  have hp := parameter_products hx hx1 ht ht1
  have hw := weight_norm_le hx hx1 ht ht1
  have hs : ‖(∑ i : Fin 8, (((i.val+1 : ℕ) : ℂ))^(-s))-
      ∑ i : Fin 8, powerJet i s‖ ≤ ∑ i : Fin 8, powerError i := by
    rw [←Finset.sum_sub_distrib]
    exact (norm_sum_le _ _).trans (Finset.sum_le_sum (fun i _ => powerJet_enclosed i hg.1 hg.2))
  have h8 : ‖(8 : ℂ)^(-s)-powerJet 7 s‖ ≤ powerError 7 := powerJet_enclosed 7 hg.1 hg.2
  have heq : SexticPrimitive.finiteModel 8 s-sourcePolynomial s =
      (s-1)*((∑ i : Fin 8, (((i.val+1 : ℕ) : ℂ))^(-s))-
        ∑ i : Fin 8, powerJet i s)+weight s*((8 : ℂ)^(-s)-powerJet 7 s) := by
    rw [CutoffEightJet.finiteModel_eight]
    unfold sourcePolynomial
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul,norm_mul]
  exact add_le_add (mul_le_mul hp.1 hs (norm_nonneg _) (by norm_num))
    (mul_le_mul hw h8 (norm_nonneg _) (by norm_num))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ee4e40b06ae8952b19c8082061dabbf4ac3664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
