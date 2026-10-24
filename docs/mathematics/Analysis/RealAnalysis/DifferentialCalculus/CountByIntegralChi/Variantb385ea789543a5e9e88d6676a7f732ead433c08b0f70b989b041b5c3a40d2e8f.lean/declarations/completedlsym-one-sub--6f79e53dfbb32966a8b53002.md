# completedLSym_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "924cc5c863b9429d18c53faf2ddb99bf66010592",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67a1e494-de09-9820-2a18-e068c9116c61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4627c2a1-fc25-14a9-c88d-b9108cc53c4f",
  "kind": "lemma",
  "lexical_name": "completedLSym_one_sub",
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
  "slug": "completedlsym-one-sub--6f79e53dfbb32966a8b53002",
  "source": {
    "blob": "924cc5c863b9429d18c53faf2ddb99bf66010592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f79e53dfbb32966a8b530029af15d5afa4d25070b45df9a2d552d9330486770",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4627c2a1-fc25-14a9-c88d-b9108cc53c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completedLSym_one_sub (hprim : χ.IsPrimitive) (w : ℂ) :
    completedLSym χ (1 - w) = rootNumber χ * completedLSym χ⁻¹ w := by
  unfold completedLSym
  rw [hprim.completedLFunction_one_sub w]
  have hmul : (q : ℂ) ^ ((1 - w) / 2) * (q : ℂ) ^ (w - 1 / 2) = (q : ℂ) ^ (w / 2) := by
    rw [← cpow_add _ _ natCast_q_ne_zero]
    congr 1
    ring
  calc (q : ℂ) ^ ((1 - w) / 2) * ((q : ℂ) ^ (w - 1 / 2) * rootNumber χ * completedLFunction χ⁻¹ w)
      = ((q : ℂ) ^ ((1 - w) / 2) * (q : ℂ) ^ (w - 1 / 2)) * rootNumber χ
          * completedLFunction χ⁻¹ w := by ring
    _ = rootNumber χ * ((q : ℂ) ^ (w / 2) * completedLFunction χ⁻¹ w) := by rw [hmul]; ring

/-! ## Zeros and orders of Λ and Λ_sym -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924cc5c863b9429d18c53faf2ddb99bf66010592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
