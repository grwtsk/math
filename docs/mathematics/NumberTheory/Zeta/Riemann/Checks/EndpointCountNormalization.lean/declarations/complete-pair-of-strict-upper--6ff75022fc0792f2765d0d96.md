# complete_pair_of_strict_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2403387-111d-191a-cd89-8505281ce849",
  "kind": "theorem",
  "lexical_name": "complete_pair_of_strict_upper",
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
  "slug": "complete-pair-of-strict-upper--6ff75022fc0792f2765d0d96",
  "source": {
    "blob": "1f23b3626f9d627a845d1c5cd7bdfeb95e55692c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff75022fc0792f2765d0d96b7baf2589dc6aadb6d4e4ecacd5443c2aa97c540",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2403387-111d-191a-cd89-8505281ce849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pair_of_strict_upper (hu : heightCount (15 : ℝ) < 4) :
    ∃ z : ZeroPoint,
      ‖z.1 - toComplex center‖ ≤ (innerRadius : ℝ) ∧
      heightHead (15 : ℝ) = {z, conjugatePoint z} ∧
      multiplicity z = 1 ∧ multiplicity (conjugatePoint z) = 1 ∧
      z.1.re = (1 / 2 : ℝ) ∧ (conjugatePoint z).1.re = (1 / 2 : ℝ) := by
  classical
  obtain ⟨z, hz, hm, hline, _⟩ := EndpointCriticalLine.unique_simple_critical_point
  have hp := EndpointCriticalLine.positive_height hz
  have hpos : 0 < z.1.im := lt_trans (by norm_num : (0 : ℝ) < 14) hp.1
  have hh : height z ≤ 15 := by
    simpa only [height, abs_of_pos hpos] using hp.2.le
  have hmem : z ∈ heightHead (15 : ℝ) := (mem_heightHead _ _).mpr hh
  have hconj : conjugatePoint z ∈ heightHead (15 : ℝ) := by
    apply (mem_heightHead _ _).mpr
    simpa only [conjugate_height] using hh
  have he := head_eq_pair_of_count_le_two
    (ne_conjugate_of_im_ne_zero hpos.ne') hmem hconj
    (le_of_eq (counts_at_fifteen_of_strict_upper hu).1)
  refine ⟨z, hz, he, hm, ?_, hline, ?_⟩
  · rw [conjugate_multiplicity, hm]
  · change z.1.re = (1 / 2 : ℝ)
    exact hline

/-- This is a bounded implication. Its upper-count premise is NOT discharged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f23b3626f9d627a845d1c5cd7bdfeb95e55692c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
