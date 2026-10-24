# Complex.isQuotientCoveringMap_npow

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
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:843d8db4-01b8-4809-14f1-bc78e3729521",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95733d26-90b7-b324-0366-ce4edf59ddc0",
  "kind": "theorem",
  "lexical_name": "Complex.isQuotientCoveringMap_npow",
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
  "slug": "complex-isquotientcoveringmap-npow--499c83a1de16f8ed0de14c1e",
  "source": {
    "blob": "64c4e59a2129269bca18cc9478c9eeb65178b51e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 116,
    "path": "GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:499c83a1de16f8ed0de14c1ec5f0fe7eb1a5ff7482bb7c95d3bfef5648e8ab9a",
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

Occurrence: `result:95733d26-90b7-b324-0366-ce4edf59ddc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Complex.isQuotientCoveringMap_npow (n : ℕ) [NeZero n] :
    IsQuotientCoveringMap (fun z : ℂˣ ↦ z ^ n) (powMonoidHom (α := ℂˣ) n).ker :=
  isQuotientCoveringMap_npow n (by simp [NeZero.ne]) fun _ ↦ ⟨_, cpow_nat_inv_pow _ (NeZero.ne n)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64c4e59a2129269bca18cc9478c9eeb65178b51e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
