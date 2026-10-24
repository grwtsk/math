# auxInv_auxHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efb5180c-e974-cb67-c4cc-65b76a208f45",
  "kind": "lemma",
  "lexical_name": "auxInv_auxHom",
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
  "slug": "auxinv-auxhom--cd2b53f16813dd2e21e69cbc",
  "source": {
    "blob": "5629cf9f4cd5dc40b9c598888a4616a5fbfae624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd2b53f16813dd2e21e69cbcd74db824f347d759170a8679b7f69979ad3a72fa",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efb5180c-e974-cb67-c4cc-65b76a208f45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma auxInv_auxHom : (auxInv S r).comp (auxHom (S := S) r).toRingHom = RingHom.id _ := by
  rw [← RingHom.cancel_right (Ideal.Quotient.mk_surjective)]
  ext x
  · simp [auxInv]
  · simp only [auxInv, AlgHom.toRingHom_eq_coe, RingHom.coe_comp, RingHom.coe_coe,
      Function.comp_apply, auxHom_mk, aeval_X, RingHomCompTriple.comp_eq, invSelf, Away.lift,
      lift_mk'_spec]
    simp only [map_one, RingHom.coe_comp, Function.comp_apply]
    rw [← map_one (Ideal.Quotient.mk _), ← map_mul, Ideal.Quotient.mk_eq_mk_iff_sub_mem,
      ← Ideal.neg_mem_iff, neg_sub]
    exact Ideal.mem_span_singleton_self (C r * X x - 1)

/-- The canonical algebra isomorphism from `MvPolynomial Unit R` quotiented by
`C r * X () - 1` to the localization of `R` away from `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629cf9f4cd5dc40b9c598888a4616a5fbfae624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
