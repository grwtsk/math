# realContinuousMapZeroOfNNReal_apply_comp_toReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:424e8755-5a7f-40ab-645b-a8fcfe6fa5c7",
  "kind": "lemma",
  "lexical_name": "realContinuousMapZeroOfNNReal_apply_comp_toReal",
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
  "slug": "realcontinuousmapzeroofnnreal-apply-comp-toreal--8710443a8bec05a87bdc7efb",
  "source": {
    "blob": "d016c978765f37ae7e2d105f4336d6a5a50bcc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 340,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8710443a8bec05a87bdc7efb1d3c5460fa0403b1761a9b375aa8fef24932bd26",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:424e8755-5a7f-40ab-645b-a8fcfe6fa5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma realContinuousMapZeroOfNNReal_apply_comp_toReal (φ : C(X, ℝ≥0)₀ →⋆ₙₐ[ℝ≥0] A)
    (f : C(X, ℝ≥0)₀) :
    φ.realContinuousMapZeroOfNNReal ((ContinuousMapZero.mk ⟨toReal, continuous_coe⟩ rfl).comp f) =
      φ f := by
  simp only [realContinuousMapZeroOfNNReal_apply]
  convert_to φ f - φ 0 = φ f using 2
  on_goal -1 => rw [map_zero, sub_zero]
  all_goals
    congr
    ext x
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d016c978765f37ae7e2d105f4336d6a5a50bcc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
