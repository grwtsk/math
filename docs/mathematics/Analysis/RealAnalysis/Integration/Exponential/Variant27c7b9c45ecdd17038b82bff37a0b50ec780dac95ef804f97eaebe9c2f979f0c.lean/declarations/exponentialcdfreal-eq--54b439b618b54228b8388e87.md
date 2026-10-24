# exponentialCDFReal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f216d7e749e28202a90e8509d8f373d5fafdd959",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4016f96c-bbd7-4515-2fc6-53fcfaaa1a4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35ea0381-2cf5-d10a-da92-a3f6af56c2d4",
  "kind": "lemma",
  "lexical_name": "exponentialCDFReal_eq",
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
  "slug": "exponentialcdfreal-eq--54b439b618b54228b8388e87",
  "source": {
    "blob": "f216d7e749e28202a90e8509d8f373d5fafdd959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54b439b618b54228b8388e87f0ce680480e82d65cc209f79878e4c9a001766c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35ea0381-2cf5-d10a-da92-a3f6af56c2d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exponentialCDFReal_eq {r : ℝ} (hr : 0 < r) (x : ℝ) :
    exponentialCDFReal r x = if 0 ≤ x then 1 - exp (-(r * x)) else 0 := by
  rw [exponentialCDFReal_eq_lintegral hr, lintegral_exponentialPDF_eq_antiDeriv hr x,
    ENNReal.toReal_ofReal_eq_iff]
  split_ifs with h
  · simp only [sub_nonneg, exp_le_one_iff, Left.neg_nonpos_iff]
    exact mul_nonneg hr.le h
  · exact le_rfl

end ExponentialCDF

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f216d7e749e28202a90e8509d8f373d5fafdd959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
