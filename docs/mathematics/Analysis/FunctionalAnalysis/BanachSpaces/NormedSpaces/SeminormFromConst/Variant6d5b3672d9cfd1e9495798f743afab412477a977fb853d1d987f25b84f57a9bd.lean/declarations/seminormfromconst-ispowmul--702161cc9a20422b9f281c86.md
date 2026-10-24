# seminormFromConst_isPowMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d47778b45292d58431721d151b052f4e3b89959",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e724d9d6-a386-f52f-b7b3-bb73da46259f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:252b647e-f880-0189-7519-99f3b5417e19",
  "kind": "theorem",
  "lexical_name": "seminormFromConst_isPowMul",
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
  "slug": "seminormfromconst-ispowmul--702161cc9a20422b9f281c86",
  "source": {
    "blob": "8d47778b45292d58431721d151b052f4e3b89959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 180,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:702161cc9a20422b9f281c86771b839f99bfa687b2a98431f3ec5b370327b663",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:252b647e-f880-0189-7519-99f3b5417e19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seminormFromConst_isPowMul : IsPowMul (seminormFromConst' hf1 hc hpm) := fun x m hm ↦ by
  simp only [seminormFromConst']
  have hlim : Tendsto (fun n ↦ seminormFromConst_seq c f (x ^ m) (m * n)) atTop
      (𝓝 (seminormFromConst' hf1 hc hpm (x ^ m))) := by
    apply (seminormFromConst_isLimit hf1 hc hpm (x ^ m)).comp
      (tendsto_atTop_atTop_of_monotone (fun _ _ hnk ↦ mul_le_mul_left' hnk m) _)
    rintro n; use n; exact le_mul_of_one_le_left' hm
  apply tendsto_nhds_unique hlim
  convert (seminormFromConst_isLimit hf1 hc hpm x).pow m using 1
  ext n
  simp only [seminormFromConst_seq, div_pow, ← hpm _ hm, ← pow_mul, mul_pow, mul_comm m n]

/-- The function `seminormFromConst' hf1 hc hpm` is bounded above by `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d47778b45292d58431721d151b052f4e3b89959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
