# cauchyK_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f8720428b276926fb1310827167a982a1006e88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a91903f5-3cd6-35fb-fed1-42c965a53418",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcec9f8a-0603-75b1-ab30-a5ca38d22074",
  "kind": "theorem",
  "lexical_name": "cauchyK_mul_le",
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
  "slug": "cauchyk-mul-le--fa6a61a97ee131fd4f70e052",
  "source": {
    "blob": "4f8720428b276926fb1310827167a982a1006e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6a61a97ee131fd4f70e052bc4c5b50b3f13b8de8ef5e0901eaf756d1d5832f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcec9f8a-0603-75b1-ab30-a5ca38d22074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchyK_mul_le (a b t : ℝ) :
    cauchyK a t * cauchyK b t ≤ 4 / (4 + (a - b) ^ 2) * (cauchyK a t + cauchyK b t) := by
  unfold cauchyK
  have hu : 0 < 1 + (t - a) ^ 2 := by positivity
  have hv : 0 < 1 + (t - b) ^ 2 := by positivity
  have hD : 0 < 4 + (a - b) ^ 2 := by positivity
  have key : (4 + (a - b) ^ 2) ≤ 4 * ((1 + (t - b) ^ 2) + (1 + (t - a) ^ 2)) := by
    nlinarith [sq_nonneg ((t - a) + (t - b)), sq_nonneg (t - a), sq_nonneg (t - b)]
  have eR : 4 / (4 + (a - b) ^ 2) * ((1 + (t - a) ^ 2)⁻¹ + (1 + (t - b) ^ 2)⁻¹)
      = (4 * ((1 + (t - b) ^ 2) + (1 + (t - a) ^ 2)))
        / ((4 + (a - b) ^ 2) * ((1 + (t - a) ^ 2) * (1 + (t - b) ^ 2))) := by
    field_simp
  have eL : (1 + (t - a) ^ 2)⁻¹ * (1 + (t - b) ^ 2)⁻¹
      = (4 + (a - b) ^ 2) / ((4 + (a - b) ^ 2) * ((1 + (t - a) ^ 2) * (1 + (t - b) ^ 2))) := by
    field_simp
  rw [eL, eR]
  exact div_le_div_of_nonneg_right key (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f8720428b276926fb1310827167a982a1006e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
