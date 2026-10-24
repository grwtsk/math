# prod_apply_inr_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c239cb1f8c41489a135909a63a3e4b71d311356",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba49610c01fe47360d7f3ee85cf6b803af00b6367b0b79817b521f0824e2ae12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6f4c6e6-92a3-326b-b16c-df080d807867",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df27ff3b-642a-57be-159b-3a9e3d451084",
  "kind": "theorem",
  "lexical_name": "prod_apply_inr_snd",
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
  "slug": "prod-apply-inr-snd--da08aedf42e06d3dd10ac1b3",
  "source": {
    "blob": "6c239cb1f8c41489a135909a63a3e4b71d311356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantba49610c01fe47360d7f3ee85cf6b803af00b6367b0b79817b521f0824e2ae12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da08aedf42e06d3dd10ac1b340c9d3ca128eccae579dca85d81f3ebc8b4b094b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variantba49610c01fe47360d7f3ee85cf6b803af00b6367b0b79817b521f0824e2ae12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df27ff3b-642a-57be-159b-3a9e3d451084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_apply_inr_snd (i) : (b.prod b' (Sum.inr i)).2 = b' i :=
  b'.repr.injective <| by
    ext i
    simp only [Basis.prod, Basis.coe_ofRepr, LinearEquiv.symm_trans_apply,
      LinearEquiv.prodCongr_symm, LinearEquiv.prodCongr_apply, b'.repr.apply_symm_apply,
      LinearEquiv.symm_symm, repr_self, Finsupp.snd_sumFinsuppLEquivProdFinsupp]
    apply Finsupp.single_apply_left Sum.inr_injective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variantba49610c01fe47360d7f3ee85cf6b803af00b6367b0b79817b521f0824e2ae12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variantba49610c01fe47360d7f3ee85cf6b803af00b6367b0b79817b521f0824e2ae12.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c239cb1f8c41489a135909a63a3e4b71d311356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
