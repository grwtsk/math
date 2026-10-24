# MeromorphicAt.meromorphicTrailingCoeffAt_sub_eq_sub

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
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da7fbad6-2ecd-a563-c19f-c78b7a1538bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cb6599f-e79b-9a4e-9fdf-a66bdc1439a9",
  "kind": "theorem",
  "lexical_name": "MeromorphicAt.meromorphicTrailingCoeffAt_sub_eq_sub",
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
  "slug": "meromorphicat-meromorphictrailingcoeffat-sub-eq-sub--a53f0bc6277276040f3d7d5e",
  "source": {
    "blob": "08af297ac40595f40cd661bbc3bd6a1515042026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 339,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a53f0bc6277276040f3d7d5eb53399baca633a44c1bc5fce220e6cee11463f26",
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

Occurrence: `result:3cb6599f-e79b-9a4e-9fdf-a66bdc1439a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicAt.meromorphicTrailingCoeffAt_sub_eq_sub {f₁ f₂ : 𝕜 → E}
    (hf₁ : MeromorphicAt f₁ x) (hf₂ : MeromorphicAt f₂ x)
    (h₁ : meromorphicOrderAt f₁ x = meromorphicOrderAt f₂ x)
    (h₂ : meromorphicTrailingCoeffAt f₁ x - meromorphicTrailingCoeffAt f₂ x ≠ 0) :
    meromorphicTrailingCoeffAt (f₁ - f₂) x
      = meromorphicTrailingCoeffAt f₁ x - meromorphicTrailingCoeffAt f₂ x := by
  rw [sub_eq_add_neg, hf₁.meromorphicTrailingCoeffAt_add_eq_add (by fun_prop)]
  · rw [meromorphicTrailingCoeffAt_neg, sub_eq_add_neg]
  · rwa [← meromorphicOrderAt_neg]
  · rwa [meromorphicTrailingCoeffAt_neg, ← sub_eq_add_neg]

/--
If `f₁` and `f₂` have equal order at `x` and if their trailing coefficients do not cancel, then the
trailing coefficient of `f₁ - f₂` at `x` is the sum of the trailing coefficients.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08af297ac40595f40cd661bbc3bd6a1515042026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
