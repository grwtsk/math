# continuousOn_tan_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b16ae9b-67a5-0022-0c69-696c3243df0f",
  "kind": "theorem",
  "lexical_name": "continuousOn_tan_Ioo",
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
  "slug": "continuouson-tan-ioo--0e294a4e62f17d321d08e28c",
  "source": {
    "blob": "d71bb893b369e11eb77d59698a2e62ecc7ba195e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e294a4e62f17d321d08e28c145556791fc8134d7bd5464233781059770a3d7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b16ae9b-67a5-0022-0c69-696c3243df0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_tan_Ioo : ContinuousOn tan (Ioo (-(π / 2)) (π / 2)) := by
  refine' ContinuousOn.mono continuousOn_tan fun x => _
  simp only [and_imp, mem_Ioo, mem_setOf_eq, Ne.def]
  rw [cos_eq_zero_iff]
  rintro hx_gt hx_lt ⟨r, hxr_eq⟩
  cases' le_or_lt 0 r with h h
  · rw [lt_iff_not_ge] at hx_lt
    refine' hx_lt _
    rw [hxr_eq, ← one_mul (π / 2), mul_div_assoc, ge_iff_le, mul_le_mul_right (half_pos pi_pos)]
    simp [h]
  · rw [lt_iff_not_ge] at hx_gt
    refine' hx_gt _
    rw [hxr_eq, ← one_mul (π / 2), mul_div_assoc, ge_iff_le, neg_mul_eq_neg_mul,
      mul_le_mul_right (half_pos pi_pos)]
    have hr_le : r ≤ -1 := by rwa [Int.lt_iff_add_one_le, ← le_neg_iff_add_nonpos_right] at h
    rw [← le_sub_iff_add_le, mul_comm, ← le_div_iff]
    · norm_num; rw [← Int.cast_one, ← Int.cast_neg]; norm_cast
    · exact zero_lt_two
#align real.continuous_on_tan_Ioo Real.continuousOn_tan_Ioo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d71bb893b369e11eb77d59698a2e62ecc7ba195e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
