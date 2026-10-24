# homQuotientZPowOfHom_comp_of_rightInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fe02bb339deaef7cab640f95fddd229f644bb8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 527,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab449729-ea8e-9bc9-20d3-cffde74e8aeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ee2a7b6-8d73-8756-d049-8f6d10417b5b",
  "kind": "theorem",
  "lexical_name": "homQuotientZPowOfHom_comp_of_rightInverse",
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
  "slug": "homquotientzpowofhom-comp-of-rightinverse--d5e18f72c817024a6d05d2f0",
  "source": {
    "blob": "9fe02bb339deaef7cab640f95fddd229f644bb8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 527,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e18f72c817024a6d05d2f0d845789990615ffff8a41338e6db73c9dd823ca7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Variant7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ee2a7b6-8d73-8756-d049-8f6d10417b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homQuotientZPowOfHom_comp_of_rightInverse (i : Function.RightInverse g f) :
    (homQuotientZPowOfHom f n).comp (homQuotientZPowOfHom g n) = MonoidHom.id _ :=
  monoidHom_ext _ <| MonoidHom.ext fun x => congrArg _ <| i x
#align quotient_group.hom_quotient_zpow_of_hom_comp_of_right_inverse QuotientGroup.homQuotientZPowOfHom_comp_of_rightInverse
#align quotient_add_group.hom_quotient_zsmul_of_hom_comp_of_right_inverse QuotientAddGroup.homQuotientZSMulOfHom_comp_of_rightInverse

/-- The equivalence of quotients by powers of an integer induced by a group isomorphism. -/
@[to_additive "The equivalence of quotients by multiples of an integer induced by an additive group
isomorphism."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Variant7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe02bb339deaef7cab640f95fddd229f644bb8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
