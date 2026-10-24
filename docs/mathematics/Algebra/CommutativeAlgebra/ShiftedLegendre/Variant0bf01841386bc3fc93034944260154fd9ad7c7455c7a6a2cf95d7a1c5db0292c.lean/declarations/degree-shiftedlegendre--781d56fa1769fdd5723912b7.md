# degree_shiftedLegendre

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee2e0359-4288-78cd-461d-7961ad261932",
  "kind": "theorem",
  "lexical_name": "degree_shiftedLegendre",
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
  "slug": "degree-shiftedlegendre--781d56fa1769fdd5723912b7",
  "source": {
    "blob": "39712fd040bfe7e96b77a5ef6d77798eec06e3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:781d56fa1769fdd5723912b714e3ada4dbe70ac3fe31934af550552640c46ec8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee2e0359-4288-78cd-461d-7961ad261932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem degree_shiftedLegendre (n : ℕ) : (shiftedLegendre n).degree = n := by
  refine le_antisymm ?_ (le_degree_of_ne_zero ?_)
  · rw [degree_le_iff_coeff_zero]
    intro k h
    norm_cast at h
    simp [coeff_shiftedLegendre, choose_eq_zero_of_lt h]
  · simp [coeff_shiftedLegendre, (choose_pos (show n ≤ n + n by simp)).ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39712fd040bfe7e96b77a5ef6d77798eec06e3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
