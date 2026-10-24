# delta_eq_zero_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ed6cd70dbc18209841f7a186d7e278e7281235a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:898a0b53-af7e-3711-bbf4-5b981d2a6bc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d596c3a-a5aa-26c4-644e-b5928cb6be63",
  "kind": "theorem",
  "lexical_name": "delta_eq_zero_of_notMem",
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
  "slug": "delta-eq-zero-of-notmem--78dcf4532e48ea7b8256aed1",
  "source": {
    "blob": "6ed6cd70dbc18209841f7a186d7e278e7281235a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 212,
    "path": "GRWTSK/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78dcf4532e48ea7b8256aed194af7a05e165295c979814f93b16e86d31fbf404",
  "verification": {
    "reference": "docs/verification/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d596c3a-a5aa-26c4-644e-b5928cb6be63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem delta_eq_zero_of_notMem (x : E) (hx : x ∉ Ω) : (delta x : 𝓓'^{n}(Ω, ℝ)) = 0 := by
  ext f
  change f x = 0
  have hx_support : x ∉ tsupport f := by
    intro hx_mem
    exact hx (f.tsupport_subset hx_mem)
  exact image_eq_zero_of_notMem_tsupport hx_support

end DiracDelta

section LineDerivCLM
-- TODO: generalize this section to `𝕜` linearity
-- by generalizing `ContinuousLinearMap.precompCompactConvergenceCLM`

/-- `lineDerivCLM 𝕜 v` is the continuous `𝕜`-linear-map sending a distribution
`T : 𝓓'^{k}_{K}(E, F)` to its derivative along the vector `v`, which is a
distribution in `𝓓^{n}_{K}(E, F)`. Because differentiating increases the order, this only makes
sense if `k + 1 ≤ n`, otherwise we define it as the zero map.

The parameters `n` and `k` are implicit as they can often be inferred from context, or
specified by a type ascription. For `n = k = ⊤`, we also provide instances of the `LineDeriv`
notation typeclass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed6cd70dbc18209841f7a186d7e278e7281235a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
