# bklnw_lemma_8_term_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31d573af61253eda377326baebeb36929353a168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1046,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67309b68-77ee-b2b5-aa9e-bd44de6cab90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f53a25e6-4b08-847e-12ed-3ab3a1f72b3d",
  "kind": "lemma",
  "lexical_name": "bklnw_lemma_8_term_eq",
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
  "slug": "bklnw-lemma-8-term-eq--92019f7318b1d61fe094a90c",
  "source": {
    "blob": "31d573af61253eda377326baebeb36929353a168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1065,
    "line": 1046,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92019f7318b1d61fe094a90ce7917da2a345a38d2075c17f9dcc032ca11ceb7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f53a25e6-4b08-847e-12ed-3ab3a1f72b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1046–1065.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bklnw_lemma_8_term_eq (k ℓ : ℕ) (x a_ℓ : ℝ) (hx_pos : 0 < x) (h_log : 0 < log x) :
    a_ℓ * x ^ ((1 : ℝ) / (↑ℓ + 1)) = a_ℓ * log x ^ k * x ^ (-(ℓ : ℝ) / (↑ℓ + 1)) * (x / log x ^ k) := by
  have h_denom : (ℓ : ℝ) + 1 ≠ 0 := by positivity
  have h_cancel : log x ^ k * (x / log x ^ k) = x := by
    have hlog_ne : log x ^ k ≠ 0 := by positivity
    exact mul_div_cancel₀ x hlog_ne
  calc
    a_ℓ * x ^ ((1 : ℝ) / (↑ℓ + 1)) = a_ℓ * (x ^ (-(ℓ : ℝ) / (↑ℓ + 1)) * x) := by
      nth_rw 3 [← rpow_one x]
      rw [← rpow_add hx_pos]
      congr
      field_simp [h_denom]
      ring
    _ = a_ℓ * x ^ (-(ℓ : ℝ) / (↑ℓ + 1)) * x := by ring
    _ = a_ℓ * log x ^ k * x ^ (-(ℓ : ℝ) / (↑ℓ + 1)) * (x / log x ^ k) := by
      conv_lhs =>
        enter [2]
        rw [← h_cancel]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean#L1046).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d573af61253eda377326baebeb36929353a168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
