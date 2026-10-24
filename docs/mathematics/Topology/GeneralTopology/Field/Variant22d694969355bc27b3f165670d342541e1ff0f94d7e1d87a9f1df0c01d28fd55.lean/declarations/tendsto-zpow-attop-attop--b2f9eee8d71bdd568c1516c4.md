# tendsto_zpow_atTop_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b4c4e16865b7338379cdfd80904b721393fad53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d1bad6f-a415-30c0-00a5-4c281e710b32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b6a4b80-1af5-427a-a6e4-f2a4ed9e71cf",
  "kind": "lemma",
  "lexical_name": "tendsto_zpow_atTop_atTop",
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
  "slug": "tendsto-zpow-attop-attop--b2f9eee8d71bdd568c1516c4",
  "source": {
    "blob": "5b4c4e16865b7338379cdfd80904b721393fad53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f9eee8d71bdd568c1516c4c774cb1c4b3d313e6e8ce85975815c2c7a1a3deb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b6a4b80-1af5-427a-a6e4-f2a4ed9e71cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_zpow_atTop_atTop {n : ℤ} (hn : 0 < n) : Tendsto (fun x : α ↦ x ^ n) atTop atTop := by
  lift n to ℕ using hn.le; simp [(Int.ofNat_pos.mp hn).ne']

end LinearOrderedSemifield


section LinearOrderedField

variable [Field α] [LinearOrder α] [IsStrictOrderedRing α]
  {l : Filter β} {f : β → α} {r : α}

/-- If `r` is a positive constant, `fun x ↦ r * f x` tends to negative infinity along a filter
if and only if `f` tends to negative infinity along the same filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4c4e16865b7338379cdfd80904b721393fad53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
