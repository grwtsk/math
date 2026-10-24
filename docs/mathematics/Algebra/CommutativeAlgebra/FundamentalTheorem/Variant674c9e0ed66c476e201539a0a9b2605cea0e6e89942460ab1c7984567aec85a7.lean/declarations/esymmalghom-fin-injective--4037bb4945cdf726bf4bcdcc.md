# esymmAlgHom_fin_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377bb94c58397dc00f1ae086a43d8af3dfa22837",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04decdf2-a630-2b2b-3983-38c84000b64a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8860fdeb-43bd-3eb1-f9fe-2320f5d2e229",
  "kind": "lemma",
  "lexical_name": "esymmAlgHom_fin_injective",
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
  "slug": "esymmalghom-fin-injective--4037bb4945cdf726bf4bcdcc",
  "source": {
    "blob": "377bb94c58397dc00f1ae086a43d8af3dfa22837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 272,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4037bb4945cdf726bf4bcdcc41ed9212ecdde533002da802cd39ad8270db7f10",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8860fdeb-43bd-3eb1-f9fe-2320f5d2e229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma esymmAlgHom_fin_injective (h : n ≤ m) :
    Function.Injective (esymmAlgHom (Fin m) R n) := by
  rw [injective_iff_map_eq_zero]
  refine fun p ↦ (fun hp ↦ ?_).mtr
  rw [p.as_sum, map_sum (esymmAlgHom (Fin m) R n), ← Subalgebra.coe_eq_zero,
    AddSubmonoidClass.coe_finsetSum]
  refine sum_ne_zero_of_injOn_supDegree (D := toLex) (support_nonempty.2 hp) (fun t ht ↦ ?_)
    (fun t ht s hs he ↦ DFunLike.ext' <| accumulate_injective h ?_)
  · rw [← esymmAlgHomMonomial, Ne, ← leadingCoeff_eq_zero toLex.injective,
      leadingCoeff_esymmAlgHomMonomial t h]
    rwa [mem_support_iff] at ht
  rw [mem_coe, mem_support_iff] at ht hs
  dsimp only [Function.comp] at he
  rwa [← esymmAlgHomMonomial, ← esymmAlgHomMonomial, ← ofLex_inj, DFunLike.ext'_iff,
       supDegree_esymmAlgHomMonomial ht t h, supDegree_esymmAlgHomMonomial hs s h] at he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377bb94c58397dc00f1ae086a43d8af3dfa22837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
