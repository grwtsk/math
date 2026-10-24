# lapMatrix_mulVec_eq_zero_iff_forall_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e55ce542e06d18a49cd91f157707d25df3250427",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db99aad9-9726-91d3-f25f-09cc2f9bfa7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87a7c8e6-e6e6-68b2-45b1-7613f4921330",
  "kind": "theorem",
  "lexical_name": "lapMatrix_mulVec_eq_zero_iff_forall_reachable",
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
  "slug": "lapmatrix-mulvec-eq-zero-iff-forall-reachable--21cdade70ab351bd588e0fa2",
  "source": {
    "blob": "e55ce542e06d18a49cd91f157707d25df3250427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21cdade70ab351bd588e0fa28b7584526a6c857ebcd8918b9a233a82bb573809",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87a7c8e6-e6e6-68b2-45b1-7613f4921330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lapMatrix_mulVec_eq_zero_iff_forall_reachable {x : V → ℝ} :
    G.lapMatrix ℝ *ᵥ x = 0 ↔ ∀ i j : V, G.Reachable i j → x i = x j := by
  rw [← (posSemidef_lapMatrix ℝ G).toLinearMap₂'_zero_iff, star_trivial,
      lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_reachable]

section

variable [DecidableEq G.ConnectedComponent]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e55ce542e06d18a49cd91f157707d25df3250427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
