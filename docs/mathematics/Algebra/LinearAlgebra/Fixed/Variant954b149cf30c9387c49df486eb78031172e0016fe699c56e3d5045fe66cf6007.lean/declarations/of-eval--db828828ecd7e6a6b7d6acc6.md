# of_eval₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65bb441b54a7c277a532f352a73d9847cab8426c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae266437-b548-20a4-1c50-1026cb0115e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ecfd20a-8889-0f3e-4972-ed2b214725e9",
  "kind": "theorem",
  "lexical_name": "of_eval₂",
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
  "slug": "of-eval--db828828ecd7e6a6b7d6acc6",
  "source": {
    "blob": "65bb441b54a7c277a532f352a73d9847cab8426c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db828828ecd7e6a6b7d6acc6d0a4729001fe6402dbcfb4301cd27f5d4de1f558",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ecfd20a-8889-0f3e-4972-ed2b214725e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_eval₂ (f : Polynomial (FixedPoints.subfield G F))
    (hf : Polynomial.eval₂ (Subfield.subtype <| FixedPoints.subfield G F) x f = 0) :
    minpoly G F x ∣ f := by
  classical
  rw [← Polynomial.map_dvd_map' (Subfield.subtype <| FixedPoints.subfield G F), minpoly,
    ← Subfield.toSubring_subtype_eq_subtype, Polynomial.map_toSubring _ _, prodXSubSMul]
  refine
    Fintype.prod_dvd_of_coprime
      (Polynomial.pairwise_coprime_X_sub_C <| MulAction.injective_ofQuotientStabilizer G x) fun y =>
      QuotientGroup.induction_on y fun g => ?_
  rw [Polynomial.dvd_iff_isRoot, Polynomial.IsRoot.def, MulAction.ofQuotientStabilizer_mk,
    Polynomial.eval_smul',
    ← IsInvariantSubring.coe_subtypeHom' G (FixedPoints.subfield G F).toSubring,
    ← MulSemiringActionHom.coe_polynomial, ← MulSemiringActionHom.map_smul, smul_polynomial,
    MulSemiringActionHom.coe_polynomial, IsInvariantSubring.coe_subtypeHom',
    Polynomial.eval_map, Subfield.toSubring_subtype_eq_subtype, hf, smul_zero]

-- Why is this so slow?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65bb441b54a7c277a532f352a73d9847cab8426c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
