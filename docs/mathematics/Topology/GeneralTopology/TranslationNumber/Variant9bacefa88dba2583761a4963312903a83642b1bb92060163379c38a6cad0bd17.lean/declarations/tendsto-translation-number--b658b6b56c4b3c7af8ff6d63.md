# tendsto_translation_number₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a5a15243733a0b734744c1954d7e42522752a46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 679,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bacefa88dba2583761a4963312903a83642b1bb92060163379c38a6cad0bd17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc84339e-f83c-e987-8a3c-fdf7b3b2c2fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ded6b0bc-f176-3e56-c38c-1e08c8547ccb",
  "kind": "theorem",
  "lexical_name": "tendsto_translation_number₀",
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
  "slug": "tendsto-translation-number--b658b6b56c4b3c7af8ff6d63",
  "source": {
    "blob": "0a5a15243733a0b734744c1954d7e42522752a46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 679,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant9bacefa88dba2583761a4963312903a83642b1bb92060163379c38a6cad0bd17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b658b6b56c4b3c7af8ff6d633f68eb6cb644d5ca988c21cfcc203e0d0ca6285f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant9bacefa88dba2583761a4963312903a83642b1bb92060163379c38a6cad0bd17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ded6b0bc-f176-3e56-c38c-1e08c8547ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 679–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_translation_number₀ : Tendsto (fun n : ℕ => (f ^ n) 0 / n) atTop (𝓝 <| τ f) :=
  (tendsto_add_atTop_iff_nat 1).1 (mod_cast f.tendsto_translation_number₀')

/-- For any `x : ℝ` the sequence $\frac{f^n(x)-x}{n}$ tends to the translation number of `f`.
In particular, this limit does not depend on `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant9bacefa88dba2583761a4963312903a83642b1bb92060163379c38a6cad0bd17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant9bacefa88dba2583761a4963312903a83642b1bb92060163379c38a6cad0bd17.lean#L679).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5a15243733a0b734744c1954d7e42522752a46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
