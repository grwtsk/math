# nnnorm_commutator_units_sub_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb12c58bb889b48632207cb0ad70f2dc46f852ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8e00ecef00c1fe0dd2c5cc71be693c52ca10c05378f16422683d58c01baa633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3766d4d1-f522-a8a3-345c-c78e2cb42a52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a79709f4-e054-7467-edce-ec9eda5fb2c6",
  "kind": "lemma",
  "lexical_name": "nnnorm_commutator_units_sub_one_le",
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
  "slug": "nnnorm-commutator-units-sub-one-le--65b13b52c4f09f3db7500f2d",
  "source": {
    "blob": "fb12c58bb889b48632207cb0ad70f2dc46f852ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 448,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta8e00ecef00c1fe0dd2c5cc71be693c52ca10c05378f16422683d58c01baa633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65b13b52c4f09f3db7500f2d510a0e923689750620dfddf0c9cf3816c61b235c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta8e00ecef00c1fe0dd2c5cc71be693c52ca10c05378f16422683d58c01baa633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a79709f4-e054-7467-edce-ec9eda5fb2c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnnorm_commutator_units_sub_one_le (a b : αˣ) :
    ‖(a * b * a⁻¹ * b⁻¹).val - 1‖₊ ≤ 2 * ‖a⁻¹.val‖₊ * ‖b⁻¹.val‖₊ * ‖a.val - 1‖₊ * ‖b.val - 1‖₊ := by
  simpa using norm_commutator_units_sub_one_le a b

/-- A homomorphism `f` between semi_normed_rings is bounded if there exists a positive
  constant `C` such that for all `x` in `α`, `norm (f x) ≤ C * norm x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta8e00ecef00c1fe0dd2c5cc71be693c52ca10c05378f16422683d58c01baa633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta8e00ecef00c1fe0dd2c5cc71be693c52ca10c05378f16422683d58c01baa633.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb12c58bb889b48632207cb0ad70f2dc46f852ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
