# star_inv_int_cast_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30f6c294b99019d1998120ed5381a1fd10a2a95c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a98a8c7a-d2bb-70a5-94f3-ce3b03490d21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef91028a-cd1e-dd4b-8053-2abb9109e375",
  "kind": "theorem",
  "lexical_name": "star_inv_int_cast_smul",
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
  "slug": "star-inv-int-cast-smul--74e0f9d67ca71909468d6194",
  "source": {
    "blob": "30f6c294b99019d1998120ed5381a1fd10a2a95c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74e0f9d67ca71909468d61948118dcfb8ce8067b16321c9dc5aedeae28fc9e59",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef91028a-cd1e-dd4b-8053-2abb9109e375`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_inv_int_cast_smul [DivisionRing R] [AddCommGroup M] [Module R M] [StarAddMonoid M]
    (n : ℤ) (x : M) : star ((n⁻¹ : R) • x) = (n⁻¹ : R) • star x :=
  map_inv_int_cast_smul (starAddEquiv : M ≃+ M) R R n x
#align star_inv_int_cast_smul star_inv_int_cast_smul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f6c294b99019d1998120ed5381a1fd10a2a95c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
