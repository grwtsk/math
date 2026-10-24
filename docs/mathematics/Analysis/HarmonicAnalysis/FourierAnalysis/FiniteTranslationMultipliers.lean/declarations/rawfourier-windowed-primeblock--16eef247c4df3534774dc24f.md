# rawFourier_windowed_primeBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "937cc0e845e5aac7e4fdb4e577520f26135a9ab5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/Analysis/Fourier/FiniteTranslationMultipliers.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d187929c-2b33-13b9-72e2-353a27ccee8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6ffd41e-bcde-01ec-ebf2-7123fb947a37",
  "kind": "theorem",
  "lexical_name": "rawFourier_windowed_primeBlock",
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
  "slug": "rawfourier-windowed-primeblock--16eef247c4df3534774dc24f",
  "source": {
    "blob": "937cc0e845e5aac7e4fdb4e577520f26135a9ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 172,
    "path": "GRWTSK/Analysis/Fourier/FiniteTranslationMultipliers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16eef247c4df3534774dc24f922b7a51af2ffef886397c9eb96fccf29c86476f",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6ffd41e-bcde-01ec-ebf2-7123fb947a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawFourier_windowed_primeBlock (P B : Finset ℕ) (T ξ : ℝ)
    (hP : ∀ p ∈ P, Nat.Prime p) (hB : ∀ p ∈ B, Nat.Prime p) :
    PPNC.rawFourier (fun u =>
      (ASBNP04.FiniteProduct.cascade ASBNP04.FiniteProduct.primeWeight
        ASBNP04.FiniteProduct.primeDelay B.toList
        (PPNCP04.restrict T (PPNCP04.primeState P)) u : ℂ)) ξ =
      PPNC.blockMultiplier B ξ * PPNC.rawFourier (windowedState P T) ξ := by
  exact rawFourier_causal_primeBlock B hB _ (windowedState_causal P T)
    (windowedState_integrable P T hP) ξ

end PPNCP04.FourierBlock

#print axioms PPNCP04.FourierBlock.rawFourier_ordinaryBlock
#print axioms PPNCP04.FourierBlock.rawFourier_causal_primeBlock
#print axioms PPNCP04.FourierBlock.windowedState_integrable
#print axioms PPNCP04.FourierBlock.rawFourier_windowed_primeBlock
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTranslationMultipliers.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `937cc0e845e5aac7e4fdb4e577520f26135a9ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
