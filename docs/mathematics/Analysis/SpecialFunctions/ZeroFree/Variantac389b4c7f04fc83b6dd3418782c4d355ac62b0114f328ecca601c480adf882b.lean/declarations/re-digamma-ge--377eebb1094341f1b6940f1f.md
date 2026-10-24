# re_digamma_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bf0396dd18bbd64fbbbbda7263d8add161afe60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43c6823d-1b28-34b8-c94d-b4bdac33d9f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0274553-2987-40db-38f6-7a186cc353a3",
  "kind": "theorem",
  "lexical_name": "re_digamma_ge",
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
  "slug": "re-digamma-ge--377eebb1094341f1b6940f1f",
  "source": {
    "blob": "0bf0396dd18bbd64fbbbbda7263d8add161afe60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:377eebb1094341f1b6940f1fb3735cbdb71d97900a850eae1f32ffde032b7a98",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0274553-2987-40db-38f6-7a186cc353a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_digamma_ge {z : ℂ} (hz : 0 < z.re) (hi : 1 ≤ |z.im|) :
    Real.log |z.im| - 4 ≤ (Complex.digamma z).re := by
  have h := norm_digamma_sub_log_le hz hi
  have hre : |(Complex.digamma z - Complex.log z).re| ≤ 4 :=
    le_trans (Complex.abs_re_le_norm _) h
  have hre' := (abs_le.mp hre).1
  rw [Complex.sub_re, Complex.log_re] at hre'
  have hlog : Real.log |z.im| ≤ Real.log ‖z‖ :=
    Real.log_le_log (by linarith) (Complex.abs_im_le_norm z)
  linarith

/-- iterated functional equation off the real axis: ψ(z + n) = ψ(z) + Σ_{k<n} 1/(z + k). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf0396dd18bbd64fbbbbda7263d8add161afe60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
