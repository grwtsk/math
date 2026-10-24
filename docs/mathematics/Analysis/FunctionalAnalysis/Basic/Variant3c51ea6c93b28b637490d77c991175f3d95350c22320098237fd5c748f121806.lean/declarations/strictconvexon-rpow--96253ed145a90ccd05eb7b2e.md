# strictConvexOn_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ca7e9e3e158786edfcfba8c293e99a476bfeecc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e871cd6-e445-c8e5-4642-b83d2b508038",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:177e32ff-a0c6-92da-19e6-93034bb99b3d",
  "kind": "theorem",
  "lexical_name": "strictConvexOn_rpow",
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
  "slug": "strictconvexon-rpow--96253ed145a90ccd05eb7b2e",
  "source": {
    "blob": "3ca7e9e3e158786edfcfba8c293e99a476bfeecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 235,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96253ed145a90ccd05eb7b2e8681d8dfcb4dea17b4e91fedeba474c76222052b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177e32ff-a0c6-92da-19e6-93034bb99b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictConvexOn_rpow {p : ℝ} (hp : 1 < p) : StrictConvexOn ℝ (Ici 0) fun x : ℝ => x ^ p := by
  apply strictConvexOn_of_slope_strict_mono_adjacent (convex_Ici (0 : ℝ))
  rintro x y z (hx : 0 ≤ x) (hz : 0 ≤ z) hxy hyz
  have hy : 0 < y := by linarith
  have hy' : 0 < y ^ p := rpow_pos_of_pos hy _
  have H1 : y ^ (p - 1 + 1) = y ^ (p - 1) * y := rpow_add_one hy.ne' _
  ring_nf at H1
  trans p * y ^ (p - 1)
  · have h3 : 0 < y - x := by linarith only [hxy]
    have hyx'' : x / y < 1 := by rwa [div_lt_one hy]
    have hyx''' : x / y - 1 < 0 := by linarith only [hyx'']
    have hyx'''' : 0 ≤ x / y := by positivity
    have hyx''''' : -1 ≤ x / y - 1 := by linarith only [hyx'''']
    have : 1 - (1 + (x / y - 1)) ^ p < -p * (x / y - 1) := by
      linarith [one_add_mul_self_lt_rpow_one_add hyx''''' hyx'''.ne hp]
    rw [div_lt_iff h3, ← div_lt_div_right hy']
    convert this using 1
    · have H : (x / y) ^ p = x ^ p / y ^ p := div_rpow hx hy.le _
      ring_nf at H ⊢
      field_simp at H ⊢
      linear_combination H
    · ring_nf at H1 ⊢
      field_simp
      linear_combination p * (-y + x) * H1
  · have hyz' : 0 < z - y := by linarith only [hyz]
    have hyz'' : 1 < z / y := by rwa [one_lt_div hy]
    have hyz''' : 0 < z / y - 1 := by linarith only [hyz'']
    have hyz'''' : -1 ≤ z / y - 1 := by linarith only [hyz'']
    have : p * (z / y - 1) < (1 + (z / y - 1)) ^ p - 1 := by
      linarith [one_add_mul_self_lt_rpow_one_add hyz'''' hyz'''.ne' hp]
    rw [lt_div_iff hyz', ← div_lt_div_right hy']
    convert this using 1
    · ring_nf at H1 ⊢
      field_simp at H1 ⊢
      linear_combination p * (y - z) * y ^ p * H1
    · have H : (z / y) ^ p = z ^ p / y ^ p := div_rpow hz hy.le _
      ring_nf at H ⊢
      field_simp at H ⊢
      linear_combination -H
#align strict_convex_on_rpow strictConvexOn_rpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ca7e9e3e158786edfcfba8c293e99a476bfeecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
