# integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbd43cdb-3cef-913d-8128-279ffe9c5bb5",
  "kind": "lemma",
  "lexical_name": "integrand_integrable",
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
  "slug": "integrand-integrable--71d0f5bce506b746d3bafa07",
  "source": {
    "blob": "9f8e9045130f5c155966f2e920d03f508ae13011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71d0f5bce506b746d3bafa074836e5f10f43f278f3ed061b0d7e52236605507f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd43cdb-3cef-913d-8128-279ffe9c5bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrand_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (integrand s) (Ioi T) := by
  have hm : MellinConvergent kernel (-(s + 2)) := by
    apply mellinConvergent_of_isBigO_rpow kernel_locallyIntegrable kernel_isBigO_top
      (by simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith)
      (kernel_isBigO_zero (-s.re - 3))
    simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
    linarith
  have hi := hm.mono_set (Ioi_subset_Ioi (zero_le_one.trans hT))
  refine hi.congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [integrand, smul_eq_mul]
  rw [show -(s + 2) - 1 = -(s + 3) by ring]
  exact mul_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8e9045130f5c155966f2e920d03f508ae13011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
