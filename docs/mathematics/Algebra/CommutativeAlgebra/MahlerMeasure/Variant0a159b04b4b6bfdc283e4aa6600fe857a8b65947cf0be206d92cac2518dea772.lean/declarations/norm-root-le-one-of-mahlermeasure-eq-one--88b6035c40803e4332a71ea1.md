# norm_root_le_one_of_mahlerMeasure_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eae14479-6516-f617-be7b-dbe1dac5d069",
  "kind": "lemma",
  "lexical_name": "norm_root_le_one_of_mahlerMeasure_eq_one",
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
  "slug": "norm-root-le-one-of-mahlermeasure-eq-one--88b6035c40803e4332a71ea1",
  "source": {
    "blob": "0f2f35613260f858c7a6a03b66337b2b6156dec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 176,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88b6035c40803e4332a71ea127109c9de4f7692fa20e90e415d7a07f4cc3025b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae14479-6516-f617-be7b-dbe1dac5d069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_root_le_one_of_mahlerMeasure_eq_one : ‖z‖ ≤ 1 := by
  calc
  ‖z‖ ≤ max 1 ‖z‖ := le_max_right 1 ‖z‖
  _   ≤ ((p.map (castRingHom ℂ)).roots.map (fun a ↦ max 1 ‖a‖)).prod :=
        mem_le_prod_of_one_le (fun a ↦ le_max_left 1 ‖a‖) hz
  _   ≤ 1 := by grind [prod_max_one_norm_roots_le_mahlerMeasure_of_one_le_leadingCoeff,
        norm_leadingCoeff_eq_one_of_mahlerMeasure_eq_one]

open IntermediateField in
include hz₀ hz h in
/-- If an integer polynomial has Mahler measure equal to 1, then all its complex nonzero roots are
roots of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f2f35613260f858c7a6a03b66337b2b6156dec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
