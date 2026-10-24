# isQuotientCoveringMap_zpow

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
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb846fca-f6c9-529f-815c-60aa9048c604",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75a83be2-b12b-2c2e-4272-d8f98a04566b",
  "kind": "theorem",
  "lexical_name": "isQuotientCoveringMap_zpow",
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
  "slug": "isquotientcoveringmap-zpow--db96b79882488e8963bb4a6d",
  "source": {
    "blob": "64c4e59a2129269bca18cc9478c9eeb65178b51e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 120,
    "path": "GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db96b79882488e8963bb4a6d0c37b3bb233188b73ede4aa3acb1f68733c8eea1",
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

Occurrence: `result:75a83be2-b12b-2c2e-4272-d8f98a04566b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isQuotientCoveringMap_zpow (n : ℤ) (hn : (n : 𝕜) ≠ 0)
    (surj : (fun x : 𝕜 ↦ x ^ n).Surjective) :
    IsQuotientCoveringMap (fun x : 𝕜ˣ ↦ x ^ n) (zpowGroupHom (α := 𝕜ˣ) n).ker := by
  obtain ⟨n, rfl | rfl⟩ := n.eq_nat_or_neg
  · exact isQuotientCoveringMap_npow n (by aesop) (by simpa using surj)
  rw [show (zpowGroupHom (α := 𝕜ˣ) (-n)).ker = (powMonoidHom n).ker by ext; simp]
  convert (isQuotientCoveringMap_npow n (by aesop) _).homeomorph_comp (.inv 𝕜ˣ)
  · ext; simp
  convert! inv_involutive.surjective.comp surj; simp

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64c4e59a2129269bca18cc9478c9eeb65178b51e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
