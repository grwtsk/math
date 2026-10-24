# niven_angle_div_pi_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d1fb87681de3fa978dce3c7348324b5cc82e80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f42620cf-2320-cc7c-f52c-b8c7958b39ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d8f17e6-f76b-49d2-1733-760a36847a7a",
  "kind": "theorem",
  "lexical_name": "niven_angle_div_pi_eq",
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
  "slug": "niven-angle-div-pi-eq--aad8601069013048bf39739f",
  "source": {
    "blob": "99d1fb87681de3fa978dce3c7348324b5cc82e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 162,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad8601069013048bf39739f6cd01b6c29f55692317c0902a89cb4254c7d0c52",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d8f17e6-f76b-49d2-1733-760a36847a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem niven_angle_div_pi_eq {r : ℚ} (hcos : ∃ q : ℚ, cos (r * π) = q)
    (h_bnd : r ∈ Set.Icc 0 1) : r ∈ ({0, 1 / 3, 1 / 2, 2 / 3, 1} : Set ℚ) := by
  apply smul_left_injective ℚ pi_ne_zero |>.mem_set_image.mp
  replace h_bnd : (r : ℝ) * π ∈ Set.Icc (0 * π) (1 * π) := by
    obtain ⟨hr, hr'⟩ := h_bnd; constructor <;> gcongr <;> norm_cast
  generalize h : (r : ℝ) * π = θ at *
  have := niven_angle_eq ⟨r, h.symm⟩ hcos (by simpa using h_bnd)
  simp_all [Rat.smul_def]
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d1fb87681de3fa978dce3c7348324b5cc82e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
