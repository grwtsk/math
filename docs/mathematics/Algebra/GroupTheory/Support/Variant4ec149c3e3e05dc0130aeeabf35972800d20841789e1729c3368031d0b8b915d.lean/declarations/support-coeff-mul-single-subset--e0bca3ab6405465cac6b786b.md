# support_coeff_mul_single_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eecda48f-fb38-b17c-2c40-340c91a3a456",
  "kind": "theorem",
  "lexical_name": "support_coeff_mul_single_subset",
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
  "slug": "support-coeff-mul-single-subset--e0bca3ab6405465cac6b786b",
  "source": {
    "blob": "3d1d0c126f55f69a65d8c48861a02f03e8b098bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 61,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0bca3ab6405465cac6b786bcb83d81f7801055b0a4116085a017e331f85d451",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eecda48f-fb38-b17c-2c40-340c91a3a456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_coeff_mul_single_subset [DecidableEq G] (x : k[G]) (r : k) (a : G) :
    (x * single a r).coeff.support ⊆ x.coeff.support.image (· * a) := by
  grw [support_coeff_mul_subset, coeff_single, support_single_subset]
  change image₂ _ _ _ ⊆ _
  rw [image₂_singleton_right]

@[to_additive (dont_translate := k) support_coeff_single_mul_eq_image]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d1d0c126f55f69a65d8c48861a02f03e8b098bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
