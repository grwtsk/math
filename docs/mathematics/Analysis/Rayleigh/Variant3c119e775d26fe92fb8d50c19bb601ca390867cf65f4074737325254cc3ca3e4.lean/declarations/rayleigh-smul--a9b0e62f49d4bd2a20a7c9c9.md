# rayleigh_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db7b8956d2f7eacd51c4dfda733d76544286957e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:253653f1-695d-1d42-713b-ada89f8179f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bca8253e-2887-7169-078a-6eb19659e098",
  "kind": "theorem",
  "lexical_name": "rayleigh_smul",
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
  "slug": "rayleigh-smul--a9b0e62f49d4bd2a20a7c9c9",
  "source": {
    "blob": "db7b8956d2f7eacd51c4dfda733d76544286957e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b0e62f49d4bd2a20a7c9c957ea6ef4cd9be7e457f4c7dd73681b11db0e9110",
  "verification": {
    "reference": "docs/verification/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bca8253e-2887-7169-078a-6eb19659e098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rayleigh_smul (x : E) {c : 𝕜} (hc : c ≠ 0) :
    rayleighQuotient T (c • x) = rayleighQuotient T x := by
  by_cases hx : x = 0
  · simp [hx]
  have : ‖c‖ ≠ 0 := by simp [hc]
  have : ‖x‖ ≠ 0 := by simp [hx]
  field_simp [norm_smul, T.reApplyInnerSelf_smul]
  ring
#align continuous_linear_map.rayleigh_smul ContinuousLinearMap.rayleigh_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db7b8956d2f7eacd51c4dfda733d76544286957e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
