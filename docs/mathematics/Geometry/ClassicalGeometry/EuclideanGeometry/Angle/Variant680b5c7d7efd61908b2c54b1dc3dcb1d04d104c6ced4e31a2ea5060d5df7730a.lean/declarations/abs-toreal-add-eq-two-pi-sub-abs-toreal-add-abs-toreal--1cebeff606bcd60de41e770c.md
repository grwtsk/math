# abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "815f53c00815218f96f6ae5af380b3feb4a51f42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 933,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:585dae64-a280-af46-bca4-341f198e6ecd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3616fa5-4cea-79bf-58c8-ee4884b9a8bd",
  "kind": "lemma",
  "lexical_name": "abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal",
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
  "slug": "abs-toreal-add-eq-two-pi-sub-abs-toreal-add-abs-toreal--1cebeff606bcd60de41e770c",
  "source": {
    "blob": "815f53c00815218f96f6ae5af380b3feb4a51f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 943,
    "line": 933,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cebeff606bcd60de41e770cd2377352422c34503b2f8c4c1759d81f90bc0b5b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3616fa5-4cea-79bf-58c8-ee4884b9a8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal {θ ψ : Angle} (hs : θ.sign = ψ.sign)
    (hsa : θ.sign ≠ (θ + ψ).sign) : |(θ + ψ).toReal| = 2 * π - (|θ.toReal| + |ψ.toReal|) := by
  obtain h | h | h := θ.sign.trichotomy
  · obtain ⟨hθ', hψ'⟩ : (-θ).sign = 1 ∧ (-ψ).sign = 1 := by grind [sign_neg, neg_neg]
    have hsa' : (-θ + -ψ).sign ≠ 1 := by
      rwa [← hθ', ne_comm, ← neg_add, sign_neg, sign_neg, neg_injective.ne_iff]
    convert! abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal_aux hθ' hψ' hsa' using 1
    all_goals simp [-neg_add_rev, ← neg_add, abs_toReal_neg]
  · grind [sign_eq_zero_iff, coe_pi_add_coe_pi]
  · exact abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal_aux h (hs ▸ h) (h ▸ hsa.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815f53c00815218f96f6ae5af380b3feb4a51f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
