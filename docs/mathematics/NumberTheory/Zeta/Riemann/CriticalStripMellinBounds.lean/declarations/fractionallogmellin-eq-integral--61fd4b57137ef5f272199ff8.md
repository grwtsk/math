# fractionalLogMellin_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e69f1d1-4dc8-adb7-b354-50816d3be361",
  "kind": "lemma",
  "lexical_name": "fractionalLogMellin_eq_integral",
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
  "slug": "fractionallogmellin-eq-integral--61fd4b57137ef5f272199ff8",
  "source": {
    "blob": "e18621be209394c600609294fbf7407e811d4c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 196,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61fd4b57137ef5f272199ff8fbe589468fdb62db27d8324e7db3d641d521c56c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e69f1d1-4dc8-adb7-b354-50816d3be361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fractionalLogMellin_eq_integral (s : ℂ) :
    fractionalLogMellin s = ∫ t : ℝ in Ioi 1,
      (Real.log t : ℂ) * fractionalIntegrand s t := by
  unfold fractionalLogMellin mellin
  rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (Set.Ici_subset_Ioi.mpr zero_lt_one) ?_]
  · rw [integral_Ici_eq_integral_Ioi]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    simp only [Complex.real_smul, smul_eq_mul, fractionalKernel, realFractionalKernel,
      if_pos ht.le, Complex.ofReal_sub, Complex.ofReal_natCast, fractionalIntegrand]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  · intro t ht
    have ht1 : t < 1 := lt_of_not_ge ht.2
    simp [fractionalKernel, realFractionalKernel, not_le.mpr ht1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e18621be209394c600609294fbf7407e811d4c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
