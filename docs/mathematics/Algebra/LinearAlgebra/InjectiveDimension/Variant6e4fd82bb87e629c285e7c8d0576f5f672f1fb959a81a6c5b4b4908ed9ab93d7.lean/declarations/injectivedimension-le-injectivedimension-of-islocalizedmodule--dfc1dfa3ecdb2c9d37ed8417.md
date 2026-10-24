# injectiveDimension_le_injectiveDimension_of_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31012cc24d9d44422103ea48d50eb04ad55935a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89c46cf7-02bc-9dd6-2f8a-98830378816a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58afe568-55f4-e87b-14d6-f5e110c9c34a",
  "kind": "lemma",
  "lexical_name": "injectiveDimension_le_injectiveDimension_of_isLocalizedModule",
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
  "slug": "injectivedimension-le-injectivedimension-of-islocalizedmodule--dfc1dfa3ecdb2c9d37ed8417",
  "source": {
    "blob": "31012cc24d9d44422103ea48d50eb04ad55935a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfc1dfa3ecdb2c9d37ed8417721dda2cbe2d7ae9ba08a4ddfdd766837918b803",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58afe568-55f4-e87b-14d6-f5e110c9c34a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injectiveDimension_le_injectiveDimension_of_isLocalizedModule [Small.{v, u} R]
    [IsNoetherianRing R] (S : Submonoid R) (M : ModuleCat.{v} R) :
    injectiveDimension (M.localizedModule S) ≤ injectiveDimension M := by
  have aux (n : ℕ) : injectiveDimension M ≤ n → injectiveDimension (M.localizedModule S) ≤ n := by
    simp only [injectiveDimension_le_iff]
    intro h
    exact M.localizedModule_hasInjectiveDimensionLE n S
  refine le_of_forall_ge (fun N ↦ ?_)
  induction N with
  | bot =>
    simp only [le_bot_iff, injectiveDimension_eq_bot_iff, ModuleCat.isZero_iff_subsingleton,
      ModuleCat.localizedModule, ← Equiv.subsingleton_congr (equivShrink _)]
    intro _
    apply LocalizedModule.instSubsingleton _
  | coe N =>
    induction N with
    | top => simp
    | coe n => simpa using aux n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31012cc24d9d44422103ea48d50eb04ad55935a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
