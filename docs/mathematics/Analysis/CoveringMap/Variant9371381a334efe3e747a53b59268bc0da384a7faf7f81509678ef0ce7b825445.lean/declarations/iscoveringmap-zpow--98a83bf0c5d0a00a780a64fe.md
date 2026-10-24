# isCoveringMap_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64c4e59a2129269bca18cc9478c9eeb65178b51e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffc879da-9970-62b4-07d5-908f7b91d861",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5327dca-b81a-a777-2143-aa9c4b650fb2",
  "kind": "theorem",
  "lexical_name": "isCoveringMap_zpow",
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
  "slug": "iscoveringmap-zpow--98a83bf0c5d0a00a780a64fe",
  "source": {
    "blob": "64c4e59a2129269bca18cc9478c9eeb65178b51e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98a83bf0c5d0a00a780a64fe39b4079004ee75b0c66468102a1691d3179f116d",
  "verification": {
    "reference": "docs/verification/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5327dca-b81a-a777-2143-aa9c4b650fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoveringMap_zpow (n : ℤ) (hn : (n : 𝕜) ≠ 0) :
    IsCoveringMap fun x : {x : 𝕜 // x ≠ 0} ↦ (⟨x ^ n, zpow_ne_zero n x.2⟩ : {x : 𝕜 // x ≠ 0}) := by
  obtain ⟨n, rfl | rfl⟩ := n.eq_nat_or_neg
  · convert! isCoveringMap_npow n _ <;> aesop
  · convert! (isCoveringMap_npow n _).comp_homeomorph (.inv₀ 𝕜)
    · simp [Homeomorph.inv₀]
    · simpa using hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64c4e59a2129269bca18cc9478c9eeb65178b51e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
