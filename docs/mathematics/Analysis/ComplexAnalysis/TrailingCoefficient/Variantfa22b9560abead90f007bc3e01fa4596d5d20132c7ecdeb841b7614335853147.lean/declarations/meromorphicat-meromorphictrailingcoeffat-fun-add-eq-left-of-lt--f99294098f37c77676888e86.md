# MeromorphicAt.meromorphicTrailingCoeffAt_fun_add_eq_left_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08af297ac40595f40cd661bbc3bd6a1515042026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:168a3fb9-58a1-eaa4-caa8-5b2e80fa2b62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8219508c-4307-5472-bbf9-6a68208c4246",
  "kind": "theorem",
  "lexical_name": "MeromorphicAt.meromorphicTrailingCoeffAt_fun_add_eq_left_of_lt",
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
  "slug": "meromorphicat-meromorphictrailingcoeffat-fun-add-eq-left-of-lt--f99294098f37c77676888e86",
  "source": {
    "blob": "08af297ac40595f40cd661bbc3bd6a1515042026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 269,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f99294098f37c77676888e8627e33e48e0ca2966b8d5fc46c6c62401f6ba6e14",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8219508c-4307-5472-bbf9-6a68208c4246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicAt.meromorphicTrailingCoeffAt_fun_add_eq_left_of_lt {f₁ f₂ : 𝕜 → E}
    (hf₂ : MeromorphicAt f₂ x) (h : meromorphicOrderAt f₁ x < meromorphicOrderAt f₂ x) :
    meromorphicTrailingCoeffAt (fun z ↦ f₁ z + f₂ z) x = meromorphicTrailingCoeffAt f₁ x :=
  MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_left_of_lt hf₂ h

/--
If `f₁` and `f₂` have unequal order at `x`, then the trailing coefficient of `f₁ - f₂` at `x` is the
trailing coefficient of the function with the lowest order.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08af297ac40595f40cd661bbc3bd6a1515042026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
