# fractionalMellin_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:490412b3-2ec1-e32a-accb-1b29e02e7986",
  "kind": "lemma",
  "lexical_name": "fractionalMellin_integrable",
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
  "slug": "fractionalmellin-integrable--4e8174794c6800c005e543da",
  "source": {
    "blob": "5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 130,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e8174794c6800c005e543da34c259a1efd5f65a97a49108455140f4d7298eb5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:490412b3-2ec1-e32a-accb-1b29e02e7986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fractionalMellin_integrable {s : ℂ} (hs : 0 < s.re) :
    IntegrableOn (fun t : ℝ =>
      ((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-(s + 1))) (Ioi 1) := by
  have hi : IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-s - 1) • fractionalKernel t)
      (Ioi 1) :=
    (fractionalMellin_convergent hs).mono_set (Ioi_subset_Ioi zero_le_one)
  refine hi.congr_fun ?_ measurableSet_Ioi
  intro t ht
  change (1 : ℝ) < t at ht
  simp only [fractionalKernel, realFractionalKernel, if_pos (le_of_lt ht),
    Complex.ofReal_sub, Complex.ofReal_natCast, smul_eq_mul]
  rw [show -s - 1 = -(s + 1) by ring]
  exact mul_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
