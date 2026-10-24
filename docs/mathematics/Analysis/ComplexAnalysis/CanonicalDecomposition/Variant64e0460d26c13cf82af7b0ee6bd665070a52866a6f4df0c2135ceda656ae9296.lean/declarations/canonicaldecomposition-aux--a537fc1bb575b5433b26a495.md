# canonicalDecomposition_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc9b84e9-866e-c33d-d0dd-6c3bd7b70318",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df3d5510-16f3-02c4-b8d0-457785f3ed6d",
  "kind": "lemma",
  "lexical_name": "canonicalDecomposition_aux₁",
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
  "slug": "canonicaldecomposition-aux--a537fc1bb575b5433b26a495",
  "source": {
    "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 248,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a537fc1bb575b5433b26a49549fdddfd7f3aedf54d6d2ed0c24cd8cba9742893",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df3d5510-16f3-02c4-b8d0-457785f3ed6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma canonicalDecomposition_aux₁ (F : locallyFinsuppWithin (ball (0 : ℂ) R) ℤ) :
    MeromorphicNFOn (∏ᶠ u, (canonicalFactor R u) ^ (F u)) (ball (0 : ℂ) R) := by
  refine meromorphicNFOn_finprod (fun w ↦ ?_) fun z hz a ha b hb ↦ ?_
  · by_cases hw : w ∈ ball 0 R
    · exact fun _ _ ↦ (meromorphicNFOn_canonicalFactor hw).zpow (by trivial)
    · simp only [hw, not_false_eq_true, locallyFinsuppWithin.apply_eq_zero_of_notMem, zpow_zero]
      exact analyticOnNhd_const.meromorphicNFOn
  · have ⟨h₂a, h₂b⟩ : a ∈ ball 0 R ∧ b ∈ ball 0 R := by constructor <;> (by_contra; aesop)
    grind [eq_zero_of_zpow_eq_zero hb, eq_zero_of_zpow_eq_zero ha,
      canonicalFactor_eq_zero_iff h₂b hz, canonicalFactor_eq_zero_iff h₂a hz]

-- Auxiliary lemma for the proof of the canonical decomposition theorem: Write a function with
-- finite support as a linear combination of singleton indicator functions.
open Function.locallyFinsuppWithin in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
